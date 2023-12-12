import 'package:dalel_app/core/utils/app_string.dart';
import 'package:dalel_app/feature/onBording/peresentation/views/on_bording_view.dart';
import 'package:dalel_app/feature/splash/peresentation/views/splash_view.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String splashRoute = "/";
  static const String loginRoute = "/login";
  static const String onBordingRoute = "/onBording";
  static const String registerRoute = "/register";
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
      // case Routes.loginRoute:
      //   return MaterialPageRoute(
      //     builder: (context) => const LoginView(),
      //   );
      // case Routes.registerRoute:
      //   return MaterialPageRoute(
      //     builder: (context) => const RegisterView(),
      //   );
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
