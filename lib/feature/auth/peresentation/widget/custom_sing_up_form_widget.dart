import 'package:dalel_app/core/functions/custom_toast.dart';
import 'package:dalel_app/core/functions/navigation.dart';
import 'package:dalel_app/core/routes/app_routers.dart';
import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:dalel_app/core/utils/app_string.dart';
import 'package:dalel_app/feature/auth/peresentation/auth_cubit/auth_cubit.dart';
import 'package:dalel_app/feature/auth/peresentation/auth_cubit/auth_state.dart';
import 'package:dalel_app/feature/auth/peresentation/widget/custom_text_form_filed_widget.dart';
import 'package:dalel_app/feature/auth/peresentation/widget/tearm_and_condation_widget.dart';
import 'package:dalel_app/feature/onBording/widgets/custom_boutton_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSingUPForm extends StatelessWidget {
  const CustomSingUPForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthCubit authcubit = BlocProvider.of<AuthCubit>(context);
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is SingUpSucsessState) {
          showToast(errorMasage: "Account Created Successfully");
          goNext(context: context, path: Routes.signInViewRoute);
        } else if (state is SingUpFailureState) {
          showToast(errorMasage: state.errorMasage);
        }
      },
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
                    suffixIcon: IconButton(
                      icon: Icon(authcubit.obscurePasswordTextValue == true
                          ? Icons.visibility
                          : Icons.visibility_off),
                      onPressed: () {
                        authcubit.obscurePasswordText();
                      },
                    )),
                const TermsAndConditionWidget(),
                state is SingUpLoadingState
                    ? Center(
                        child: CircularProgressIndicator(
                            color: AppColors.primaryColor))
                    : CustomElevatedBouttonWidget(
                        text: AppStrings.signUp,
                        color:
                            authcubit.termesAndConditionsCheckBoxValues == false
                                ? AppColors.grey
                                : null,
                        onPressed: () {
                          if (authcubit.termesAndConditionsCheckBoxValues ==
                              true) {
                            if (authcubit.singUpFormKey.currentState!
                                .validate()) {
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
