import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:dalel_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomElevatedBouttonWidget extends StatelessWidget {
  const CustomElevatedBouttonWidget({Key? key, this.color, required this.text, required this.onPressed})
      : super(key: key);
  final Color? color;
  final String text;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: color ?? AppColors.primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            )),
        child: Text(
          text,
          style: CustomTextStyles.poppins500style14
              .copyWith(fontSize: 18, color: AppColors.offWhite),
        ),
      ),
    );
  }
}
