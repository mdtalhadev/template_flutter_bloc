import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template_flutter_bloc/config/di/locator.dart';
import 'package:template_flutter_bloc/config/router/app_routes.dart';
import 'package:template_flutter_bloc/config/theme/theme.dart';
import 'package:template_flutter_bloc/presentations/authentication/bloc/authentication_bloc.dart';
import 'package:template_flutter_bloc/presentations/home/app_main.dart';
import 'package:template_flutter_bloc/presentations/splash_screen.dart';

import 'config/router/app_navigator_key.dart';
import 'firebase_options.dart';
import 'presentations/authentication/ui/sign_in_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  initServices();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<AuthenticationBloc>(
          create: (context) =>
              AuthenticationBloc()..add(AuthenticationStarted()),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Habit',
      theme: AppTheme.lightTheme,
      onGenerateRoute: AppGenerateRoute.generateRoute,
      navigatorKey: appNavigatorKey,
      home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
          if (state is AuthenticationSuccess) {
            return const AppMainScreen();
          }
          if (state is AuthenticationFailure) {
            return const SignInScreen();
          }
          return SplashScreen();
        },
      ),
    );
  }
}
