import 'package:dalel_app/core/functions/navigation.dart';
import 'package:dalel_app/core/routes/app_routers.dart';
import 'package:flutter/material.dart';

Future<dynamic> delayNavigation({required BuildContext context}) {
  return Future.delayed(const Duration(seconds: 2),
      goNext(context: context, path: Routes.onBordingRoute));
}
