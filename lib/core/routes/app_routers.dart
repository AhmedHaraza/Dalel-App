import 'package:dalel_app/core/service/service_locator.dart';
import 'package:dalel_app/core/utils/app_string.dart';
import 'package:dalel_app/feature/auth/peresentation/auth_cubit/auth_cubit.dart';
import 'package:dalel_app/feature/auth/peresentation/views/sign_in_view.dart';
import 'package:dalel_app/feature/auth/peresentation/views/sing_up_view.dart';
import 'package:dalel_app/feature/onBording/peresentation/views/on_bording_view.dart';
import 'package:dalel_app/feature/splash/peresentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Routes {
  static const String splashRoute = "/";
  static const String signInViewRoute = "/signIn";
  static const String onBordingRoute = "/onBording";
  static const String singUpViewRoute = "/singUp";
  static const String forgotPasswordRoute = "/forgotPassword";
  static const String mainRoute = "/main";
  static const String storeDiteilsRoute = "/storeDiteils";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(
          builder: (context) => const SplashView(),
        );
      case Routes.onBordingRoute:
        return MaterialPageRoute(
          builder: (context) => const OnBordingView(),
        );
      case Routes.signInViewRoute:
        return MaterialPageRoute(
          builder: (context) => const SignInView(),
        );
      case Routes.singUpViewRoute:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt<AuthCubit>(),
            child: BlocProvider(
              create: (context) => getIt<AuthCubit>(),
              child: const SingUpView(),
            ),
          ),
        );
      // case Routes.forgotPasswordRoute:
      //   return MaterialPageRoute(
      //     builder: (context) => const ForgotPasswordView(),
      //   );
      // case Routes.mainRoute:
      //   return MaterialPageRoute(
      //     builder: (context) => const MainView(),
      //   );
      // case Routes.storeDiteilsRoute:
      //   return MaterialPageRoute(
      //     builder: (context) => const StoreDetilesView(),
      //   );
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (context) => Scaffold(
              appBar: AppBar(
                title: const Text(AppStrings.noRouteFound),
              ),
              body: const Center(child: Text(AppStrings.noRouteFound)),
            ));
  }
}
