import 'package:dalel_app/core/utils/app_string.dart';
import 'package:dalel_app/feature/auth/peresentation/auth_cubit/auth_cubit.dart';
import 'package:dalel_app/feature/auth/peresentation/auth_cubit/auth_state.dart';
import 'package:dalel_app/feature/auth/peresentation/widget/custom_text_form_filed_widget.dart';
import 'package:dalel_app/feature/auth/peresentation/widget/tearm_and_condation_widget.dart';
import 'package:dalel_app/feature/onBording/widgets/custom_boutton_widget.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSingUPForm extends StatefulWidget {
  const CustomSingUPForm({Key? key}) : super(key: key);

  @override
  State<CustomSingUPForm> createState() => _CustomSingUPFormState();
}

class _CustomSingUPFormState extends State<CustomSingUPForm> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Form(
            child: Column(
          children: [
            CustomTextFormFiledWidget(
              lable: const Text(AppStrings.fristName),
              onChanged: (firstName) {
                BlocProvider.of<AuthCubit>(context).firstName = firstName;
              },
            ),
            CustomTextFormFiledWidget(
              lable: const Text(AppStrings.lastName),
              onChanged: (lastName) {
                BlocProvider.of<AuthCubit>(context).lastName = lastName;
              },
            ),
            CustomTextFormFiledWidget(
              lable: const Text(AppStrings.emailAddress),
              onChanged: (emailAddress) {
                BlocProvider.of<AuthCubit>(context).emailAddress = emailAddress;
              },
            ),
            CustomTextFormFiledWidget(
              lable: const Text(AppStrings.password),
              onChanged: (password) {
                BlocProvider.of<AuthCubit>(context).password = password;
              },
            ),
            const TermsAndConditionWidget(),
            CustomElevatedBouttonWidget(
                text: AppStrings.signUp,
                onPressed: () {
                  BlocProvider.of<AuthCubit>(context)
                      .createUserWithEmailAndPassword();
                })
          ],
        ));
      },
    );
  }
}
