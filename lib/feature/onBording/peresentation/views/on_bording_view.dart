import 'package:dalel_app/core/utils/app_string.dart';
import 'package:dalel_app/feature/onBording/widgets/custom_boutton_widget.dart';
import 'package:dalel_app/feature/onBording/widgets/custom_nav_bar_widget.dart';
import 'package:dalel_app/feature/onBording/widgets/on_bording_widget_body.dart';
import 'package:flutter/material.dart';

class OnBordingView extends StatelessWidget {
  const OnBordingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: const [
              SizedBox(height: 40),
              CustomNavBar(),
              OnBordingWidgetBody(),
              SizedBox(height: 88),
              CustomElevatedBouttonWidget(text: AppStrings.next),
              SizedBox(height: 17),
            ],
          ),
        ),
      ),
    );
  }
}
