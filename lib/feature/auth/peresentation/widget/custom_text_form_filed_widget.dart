import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:dalel_app/core/utils/app_text_styles.dart';
import 'package:dalel_app/feature/auth/peresentation/auth_cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomTextFormFiledWidget extends StatelessWidget {
  const CustomTextFormFiledWidget(
      {Key? key, required this.lable, this.onChanged, this.onFieldSubmitted, this.suffixIcon, this.obscure})
      : super(key: key);
  final Widget lable;
  final void Function(String)? onChanged;
  final void Function(String)? onFieldSubmitted;
  final Widget? suffixIcon;
  final bool? obscure;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, bottom: 24),
      child: TextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return "This fieldis required";
          } else {
            return null;
          }
        },
        onChanged: onChanged,
        obscureText: BlocProvider.of<AuthCubit>(context).obscurePasswordTextValue,
        onFieldSubmitted: onFieldSubmitted,
        onTapOutside: (event) => FocusScope.of(context).unfocus(),
        cursorColor: AppColors.deepGrey,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
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
