import 'package:dalel_app/core/functions/navigation.dart';
import 'package:dalel_app/core/routes/app_routers.dart';
import 'package:flutter/material.dart';

class SignInView extends StatelessWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Login"),
        actions: [
          IconButton(
            onPressed: () {
              goNext(context: context, path: Routes.singUpViewRoute);
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: Container(),
    );
  }
}
