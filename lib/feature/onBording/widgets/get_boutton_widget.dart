import 'package:dalel_app/core/functions/navigation.dart';
import 'package:dalel_app/core/routes/app_routers.dart';
import 'package:dalel_app/core/utils/app_string.dart';
import 'package:dalel_app/core/utils/app_text_styles.dart';
import 'package:dalel_app/feature/onBording/data/model/on_bording_model.dart';
import 'package:dalel_app/feature/onBording/peresentation/views/functions/on_Bording_visited.dart';
import 'package:dalel_app/feature/onBording/widgets/custom_boutton_widget.dart';
import 'package:flutter/material.dart';

class GetBoutton extends StatelessWidget {
  const GetBoutton(
      {Key? key, required this.curentIndex, required this.controller})
      : super(key: key);
  final int curentIndex;
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    if (curentIndex == onBordingData.length - 1) {
      return Column(
        children: <Widget>[
          CustomElevatedBouttonWidget(
            text: AppStrings.createAccount,
            onPressed: () {
              onBordingVisited();
              goNext(context: context, path: Routes.singUpViewRoute);
            },
          ),
          const SizedBox(height: 16),
          GestureDetector(
            onTap: () {
              onBordingVisited();
              goNext(context: context, path: Routes.signInViewRoute);
            },
            child: Text(
              AppStrings.loginNow,
              style: CustomTextStyles.poppins300style16
                  .copyWith(fontWeight: FontWeight.w400),
            ),
          )
        ],
      );
    } else {
      return CustomElevatedBouttonWidget(
        text: AppStrings.next,
        onPressed: () {
          controller.nextPage(
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeIn);
        },
      );
    }
  }
}
