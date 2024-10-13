import 'package:destion_innovations_task/core/utils/routes.dart';
import 'package:destion_innovations_task/features/home_screen/home_screen.dart';
import 'package:destion_innovations_task/features/login_screen/login_screen.dart';
import 'package:destion_innovations_task/features/register_screen/register_screen.dart';
import 'package:destion_innovations_task/features/reset_password/reset_password.dart';
import 'package:destion_innovations_task/features/verification_screen/verification_screen.dart';
import 'package:destion_innovations_task/features/welcome_screen/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DestionInnovations());
}

class DestionInnovations extends StatelessWidget {
  const DestionInnovations({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const WelcomeScreen(),
      routes: {
        Routes.kWelcomeScreen: (context) => const WelcomeScreen(),
        Routes.kLoginScreen: (context) => const LoginScreen(),
        Routes.kRegisterScreen: (context) => const RegisterScreen(),
        Routes.kHomeScreen: (context) => const HomeScreen(),
        Routes.kVerificationScreen: (context) => const VerificationScreen(),
        Routes.kForgotPasswordScreen: (context) => const ResetPassword(),
      },
    );
  }
}



