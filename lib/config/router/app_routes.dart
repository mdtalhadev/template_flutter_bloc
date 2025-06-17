import 'package:flutter/material.dart';
import 'package:template_flutter_bloc/main.dart';
import 'package:template_flutter_bloc/presentations/authentication/ui/sign_in_screen.dart';
import 'package:template_flutter_bloc/presentations/authentication/ui/sign_up_screen.dart';
import 'package:template_flutter_bloc/presentations/splash_screen.dart';

class AppGenerateRoute {
  AppGenerateRoute._();

  static Route<dynamic>? generateRoute(RouteSettings setting) {
    switch (setting.name) {
      case RouteName.splash:
        return _navigateScreen(const SplashScreen());
      case RouteName.signIn:
        return _navigateScreen(const SignInScreen());
      case RouteName.signUp:
        return _navigateScreen(const SignUpScreen());
      case RouteName.homeScreen:
        return _navigateScreen(const MyHomePage());
      default:
        return _navigateScreen(
          Scaffold(
            body: Center(
              child: Text(
                "No route defined for ${setting.name}",
                style: const TextStyle(fontSize: 20),
              ),
            ),
          ),
        );
    }
  }

  static PageRouteBuilder _navigateScreen(Widget screen) {
    return PageRouteBuilder(
      transitionDuration: const Duration(milliseconds: 450),
      pageBuilder: (_, __, ___) => screen,
      transitionsBuilder: (_, Animation<double> animation, __, Widget child) {
        return customLeftSlideTransition(animation, child);
      },
    );
  }

  static Widget customLeftSlideTransition(
    Animation<double> animation,
    Widget child,
  ) {
    Tween<Offset> tween = Tween<Offset>(
      begin: const Offset(1, 0),
      end: const Offset(0, 0),
    );
    return SlideTransition(position: tween.animate(animation), child: child);
  }
}

class RouteName {
  RouteName._();

  static const splash = "/splash";
  static const signIn = "/signIn";
  static const signUp = "/signUp";
  static const homeScreen = "/homeScreen";
}
