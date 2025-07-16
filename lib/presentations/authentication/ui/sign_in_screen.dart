import 'package:flutter/material.dart';
import 'package:template_flutter_bloc/index.dart';
import 'package:template_flutter_bloc/presentations/authentication/ui/sign_up_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  static const String routeName = '/signIn';
  static const String routePath = '/signIn';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Implement Logg in Screen"),
          LinkToSignUpOrLogin(
            text: "Don't have an account? ",
            linkText: "Sign Up",
            onTap: () {
              // Navigate to Sign Up screen
              Navigator.pushNamed(context, SignUpScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
