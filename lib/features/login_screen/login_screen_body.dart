import 'package:destion_innovations_task/core/customs/custom_back_button.dart';
import 'package:destion_innovations_task/core/customs/custom_button.dart';
import 'package:destion_innovations_task/core/customs/custom_google_button.dart';
import 'package:destion_innovations_task/core/customs/custom_or_with.dart';
import 'package:destion_innovations_task/core/customs/custom_progress_indicator.dart';
import 'package:destion_innovations_task/core/customs/custom_row.dart';
import 'package:destion_innovations_task/core/customs/email_text_field.dart';
import 'package:destion_innovations_task/core/customs/password_text_field.dart';
import 'package:destion_innovations_task/core/utils/routes.dart';
import 'package:destion_innovations_task/core/utils/show_snack_bar.dart';
import 'package:destion_innovations_task/core/utils/styles.dart';
import 'package:destion_innovations_task/features/login_screen/forgot_password_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LoginScreenBody extends StatefulWidget {
  const LoginScreenBody({
    super.key,
  });

  @override
  State<LoginScreenBody> createState() => _LoginScreenBodyState();
}

class _LoginScreenBodyState extends State<LoginScreenBody> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isLoading = false;
  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              const CustomBackButton(),
              const Gap(28),
              Text(
                'Welcome back! Glad to see you, Again!',
                style: Styles.style30(context),
              ),
              const Gap(32),
              EmailTextField(hintText: 'Enter your email', controller: _email),
              const Gap(15),
              PasswordTextField(
                  hintText: 'Enter your Password', controller: _password),
              const Gap(15),
              const ForgotPasswordWidget(),
              const Gap(30),
              CustomProgressIndicator(
                isLoading: isLoading,
                child: CustomButton(
                  title: 'Login',
                  onPressed: () =>
                      _login(email: _email.text, password: _password.text),
                ),
              ),
              const Gap(35),
              const CustomOrWith(title: 'Or Login with'),
              const Gap(35),
              const CustomGoogleButton(),
              CustomRow(
                title: 'Don\'t have an account? ',
                subTitle: 'Register Now',
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, Routes.kRegisterScreen);
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  void _login({required String email, required String password}) async {
    if (formKey.currentState!.validate()) {
      Navigator.pushNamed(context, Routes.kHomeScreen);
      ShowSnackBar.show(context, 'Logged in Successfully');
    }
  }
}
