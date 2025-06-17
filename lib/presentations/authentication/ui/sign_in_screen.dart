import 'package:flutter/material.dart';
import 'package:template_flutter_bloc/presentations/authentication/ui/widgets/link_to_signup_or_login.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

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
              Navigator.pushNamed(context, '/signUp');
            },
          )
        ],
      ),
    );
  }
}
