import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:dalel_app/core/utils/app_string.dart';
import 'package:dalel_app/feature/auth/peresentation/auth_cubit/auth_cubit.dart';
import 'package:dalel_app/feature/auth/peresentation/auth_cubit/auth_state.dart';
import 'package:dalel_app/feature/auth/peresentation/widget/custom_text_form_filed_widget.dart';
import 'package:dalel_app/feature/auth/peresentation/widget/tearm_and_condation_widget.dart';
import 'package:dalel_app/feature/onBording/widgets/custom_boutton_widget.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSingUPForm extends StatelessWidget {
  const CustomSingUPForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthCubit authcubit = BlocProvider.of<AuthCubit>(context);
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Form(
            key: authcubit.singUpFormKey,
            child: Column(
              children: [
                CustomTextFormFiledWidget(
                  lable: const Text(AppStrings.fristName),
                  onChanged: (firstName) {
                    authcubit.firstName = firstName;
                  },
                ),
                CustomTextFormFiledWidget(
                  lable: const Text(AppStrings.lastName),
                  onChanged: (lastName) {
                    authcubit.lastName = lastName;
                  },
                ),
                CustomTextFormFiledWidget(
                  lable: const Text(AppStrings.emailAddress),
                  onChanged: (emailAddress) {
                    authcubit.emailAddress = emailAddress;
                  },
                ),
                CustomTextFormFiledWidget(
                  lable: const Text(AppStrings.password),
                  onChanged: (password) {
                    authcubit.password = password;
                  },
                ),
                const TermsAndConditionWidget(),
                CustomElevatedBouttonWidget(
                    text: AppStrings.signUp,
                    color: authcubit.termesAndConditionsCheckBoxValues == false ? AppColors.grey :null,
                    onPressed: () {
                      if (authcubit.termesAndConditionsCheckBoxValues == true) {
                        if (authcubit.singUpFormKey.currentState!.validate()) {
                          authcubit.createUserWithEmailAndPassword();
                        }
                      } else {}
                    })
              ],
            ));
      },
    );
  }
}
