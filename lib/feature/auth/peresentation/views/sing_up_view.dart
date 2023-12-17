import 'package:dalel_app/core/functions/navigation.dart';
import 'package:dalel_app/core/routes/app_routers.dart';
import 'package:dalel_app/core/utils/app_string.dart';
import 'package:dalel_app/feature/auth/peresentation/widget/custom_sing_up_form_widget.dart';
import 'package:dalel_app/feature/auth/peresentation/widget/have_an_account_widget.dart';
import 'package:dalel_app/feature/auth/peresentation/widget/welcome_text_widget.dart';
import 'package:flutter/material.dart';

class SingUpView extends StatelessWidget {
  const SingUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(child: SizedBox(height: 120)),
            const SliverToBoxAdapter(
                child: WelcomeText(text: AppStrings.welcome)),
            const SliverToBoxAdapter(child: SizedBox(height: 40)),
            const SliverToBoxAdapter(child: CustomSingUPForm()),
            SliverToBoxAdapter(
                child: HaveAnAccountWidget(
              onTap: () {
                goNext(context: context, path: Routes.signInViewRoute);
              },
              text1: AppStrings.alreadyHaveAnAccount,
              text2: AppStrings.signIn,
            ))
          ],
        ),
      ),
    );
  }
}
