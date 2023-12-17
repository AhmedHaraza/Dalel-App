import 'package:dalel_app/core/database/cache/cache_helper.dart';
import 'package:dalel_app/core/functions/navigation.dart';
import 'package:dalel_app/core/service/service_locator.dart';
import 'package:dalel_app/core/utils/app_string.dart';
import 'package:dalel_app/core/routes/app_routers.dart';
import 'package:dalel_app/core/utils/app_text_styles.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    bool isOnBordingVisited =
        getIt<CacheHelper>().getData(key: "on Bording Visited") ?? false;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (isOnBordingVisited == true) {
        FirebaseAuth.instance.currentUser == null
            ? delayedNavigation(context: context, path: Routes.singUpViewRoute)
            : delayedNavigation(context: context, path: Routes.homeViewRouter);
      } else {
        delayedNavigation(context: context, path: Routes.onBordingRoute);
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        AppStrings.appName,
        style: CustomTextStyles.pacifico400style64,
      )),
    );
  }
}

Future<dynamic> delayedNavigation(
    {required BuildContext context, required String path}) {
  return Future.delayed(
      const Duration(seconds: 2), goNext(context: context, path: path));
}
