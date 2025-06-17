import 'package:flutter/material.dart';

import 'widgets/link_to_signup_or_login.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Implement Sign Up Screen here"),
          LinkToSignUpOrLogin(
            text: "Already have an account? ",
            linkText: "Log In",
            onTap: () {
              // Navigate to Log In screen
              Navigator.pushNamed(context, '/signIn');
            },
            visualDensityVertical: -4,
            visualDensityHorizontal: -4,
          ),
        ],
      ),
    );
  }
}
