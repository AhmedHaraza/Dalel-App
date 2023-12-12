import 'package:dalel_app/core/functions/navigation.dart';
import 'package:dalel_app/core/utils/app_string.dart';
import 'package:dalel_app/core/routes/app_routers.dart';
import 'package:dalel_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      delayedNavigation(context: context);
    });
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

Future<dynamic> delayedNavigation({required BuildContext context}) {
  return Future.delayed(const Duration(seconds: 2),
      goNext(context: context, path: Routes.onBordingRoute));
}
