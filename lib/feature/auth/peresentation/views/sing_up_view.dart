import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:dalel_app/core/utils/app_string.dart';
import 'package:dalel_app/core/utils/app_text_styles.dart';
import 'package:dalel_app/feature/auth/peresentation/widget/have_an_account_widget.dart';
import 'package:dalel_app/feature/auth/peresentation/widget/tearm_and_condation_widget.dart';
import 'package:dalel_app/feature/auth/peresentation/widget/welcome_text_widget.dart';
import 'package:dalel_app/feature/onBording/widgets/custom_boutton_widget.dart';
import 'package:flutter/material.dart';

class SingUpView extends StatelessWidget {
  const SingUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(child: SizedBox(height: 152)),
            const SliverToBoxAdapter(
                child: WelcomeText(text: AppStrings.welcome)),
            const SliverToBoxAdapter(child: SizedBox(height: 40)),
            const SliverToBoxAdapter(
                child: CustomTextFormFiledWidget(
                    lable: Text(AppStrings.fristName))),
            const SliverToBoxAdapter(
                child: CustomTextFormFiledWidget(
                    lable: Text(AppStrings.lastName))),
            const SliverToBoxAdapter(
                child: CustomTextFormFiledWidget(
                    lable: Text(AppStrings.emailAddress))),
            const SliverToBoxAdapter(
                child: CustomTextFormFiledWidget(
                    lable: Text(AppStrings.password))),
            const SliverToBoxAdapter(child: TermsAndConditionWidget()),
            SliverToBoxAdapter(
                child: CustomElevatedBouttonWidget(
                    text: AppStrings.signUp, onPressed: () {})),
            const SliverToBoxAdapter(
                child: HaveAnAccountWidget(text1: AppStrings.alreadyHaveAnAccount,text2: AppStrings.signIn,))
          ],
        ),
      ),
    );
  }
}

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
