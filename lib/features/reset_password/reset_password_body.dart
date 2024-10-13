import 'package:destion_innovations_task/core/customs/custom_back_button.dart';
import 'package:destion_innovations_task/core/customs/custom_button.dart';
import 'package:destion_innovations_task/core/customs/custom_row.dart';
import 'package:destion_innovations_task/core/customs/email_text_field.dart';
import 'package:destion_innovations_task/core/customs/password_text_field.dart';
import 'package:destion_innovations_task/core/utils/routes.dart';
import 'package:destion_innovations_task/core/utils/show_snack_bar.dart';
import 'package:destion_innovations_task/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ResetPasswordBody extends StatefulWidget {
  const ResetPasswordBody({super.key});

  @override
  State<ResetPasswordBody> createState() => _ResetPasswordBodyState();
}

class _ResetPasswordBodyState extends State<ResetPasswordBody> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmPass = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    _confirmPass.dispose();
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
                'Forgot Password?',
                style: Styles.style30(context),
              ),
              const Gap(20),
              Text(
                'Don\'t worry! It occurs. Please enter the email address linked with your account.',
                style: Styles.style16(context),
              ),
              const Gap(35),
              EmailTextField(hintText: 'Enter your email', controller: _email),
              const Gap(12),
              PasswordTextField(
                  hintText: 'New Password', controller: _password),
              const Gap(12),
              PasswordTextField(
                  hintText: 'Confirm New Password', controller: _confirmPass),
              const Gap(15),
              const Gap(32),
              CustomButton(
                title: 'Reset Password',
                onPressed: () {
                  _resetPassword();
                },
              ),
              CustomRow(
                title: 'Remember Password? ',
                subTitle: 'Login',
                onTap: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  void _resetPassword() async {
    if (_password.text != _confirmPass.text) {
      ShowSnackBar.show(context, 'Password doesn\'t match');
      return;
    }
    if (formKey.currentState!.validate()) {
      Navigator.pushNamed(context, Routes.kLoginScreen);
      ShowSnackBar.show(context, 'Please Check Your Email for Verification');
    }
  }
}
