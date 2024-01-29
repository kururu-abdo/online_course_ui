import 'package:flutter/material.dart';
import 'package:online_learnig_ui/presentation/screens/auth/login.dart';
import 'package:online_learnig_ui/presentation/screens/splash/spash.dart';

class AppRouter {
  static const String SPLASH = '/splash';
  static const String LOGIN = '/login';



 static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case SPLASH:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
      case LOGIN:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
default:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
    }

    }

}