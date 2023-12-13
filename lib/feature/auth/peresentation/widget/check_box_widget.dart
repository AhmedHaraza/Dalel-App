import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';


class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({super.key});

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool? value = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12),
      child: Checkbox(
          value: value,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          side: BorderSide(
            color: AppColors.grey,
          ),
          onChanged: (newValue) {
            setState(() {
              value = newValue;
              // BlocProvider.of<AuthCubit>(context)
              //     .updateTermsAndConditionCheckBox(newValue: newValue);
            });
          }),
    );
  }
}