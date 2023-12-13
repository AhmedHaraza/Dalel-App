import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:dalel_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomTextFormFiledWidget extends StatelessWidget {
  const CustomTextFormFiledWidget({Key? key, required this.lable})
      : super(key: key);
  final Widget lable;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, bottom: 24),
      child: TextFormField(
        onTapOutside: (event) => FocusScope.of(context).unfocus(),
        cursorColor: AppColors.deepGrey,
        decoration: InputDecoration(
            labelStyle: CustomTextStyles.poppins400style12,
            label: lable,
            enabledBorder: getBoarderStyle(),
            focusedBorder: getBoarderStyle(),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            )),
      ),
    );
  }
}
OutlineInputBorder getBoarderStyle() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide(color: AppColors.grey));
}
