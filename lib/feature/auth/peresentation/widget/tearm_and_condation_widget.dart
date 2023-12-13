import 'package:dalel_app/core/utils/app_string.dart';
import 'package:dalel_app/core/utils/app_text_styles.dart';
import 'package:dalel_app/feature/auth/peresentation/widget/check_box_widget.dart';
import 'package:flutter/material.dart';

class TermsAndConditionWidget extends StatelessWidget {
  const TermsAndConditionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:88.0),
      child: Row(
        children: [
          const CustomCheckBox(),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                    text: AppStrings.iHaveAgreeToOur,
                    style: CustomTextStyles.poppins400style12),
                TextSpan(
                    text: AppStrings.termsAndCondition,
                    style: CustomTextStyles.poppins400style12
                        .copyWith(decoration: TextDecoration.underline,fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}