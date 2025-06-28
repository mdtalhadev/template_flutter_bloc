import 'package:flutter/material.dart';
import 'package:template_flutter_bloc/index.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  static const String routeName = '/signIn';
  static const String routePath = '/signIn';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Logg in Screen"),
          LinkToSignUpOrLogin(
            text: "Don't have an account? ",
            linkText: "Sign Up",
            onTap: () {
              // Navigate to Sign Up screen
              Navigator.pushNamed(context, SignInScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
