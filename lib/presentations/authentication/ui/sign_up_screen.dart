import 'package:flutter/material.dart';

import 'package:template_flutter_bloc/index.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

    static const String routeName = '/signUp';
  static const String routePath = '/signUp';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Implement Sign Up Screen here"),
          LinkToSignUpOrLogin(
            text: "Already have an account? ",
            linkText: "Log In",
            onTap: () {
              // Navigate to Log In screen
              Navigator.pop(context);
            },
            visualDensityVertical: -4,
            visualDensityHorizontal: -4,
          ),
        ],
      ),
    );
  }
}
