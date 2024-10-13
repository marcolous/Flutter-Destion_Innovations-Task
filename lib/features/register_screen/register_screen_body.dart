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
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class RegisterScreenBody extends StatefulWidget {
  const RegisterScreenBody({
    super.key,
  });

  @override
  State<RegisterScreenBody> createState() => _RegisterScreenBodyState();
}

class _RegisterScreenBodyState extends State<RegisterScreenBody> {
  final TextEditingController _userName = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmPass = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isLoading = false;

  @override
  void dispose() {
    _userName.dispose();
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
                'Hello! Register to get started',
                style: Styles.style30(context),
              ),
              const Gap(32),
              EmailTextField(hintText: 'Username', controller: _userName),
              const Gap(12),
              EmailTextField(hintText: 'Email', controller: _email),
              const Gap(12),
              PasswordTextField(hintText: 'Password', controller: _password),
              const Gap(12),
              PasswordTextField(
                  hintText: 'Confirm password', controller: _confirmPass),
              const Gap(15),
              CustomProgressIndicator(
                isLoading: isLoading,
                child: CustomButton(
                  title: 'Register',
                  onPressed: () => _register(
                      email: _email.text.trim(), password: _password.text),
                ),
              ),
              const Gap(35),
              const CustomOrWith(title: 'Or Register with'),
              const Gap(35),
              const CustomGoogleButton(),
              CustomRow(
                title: 'Already have an account? ',
                subTitle: 'Login Now',
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, Routes.kLoginScreen);
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  void _register({required String email, required String password}) async {
    if (_password.text != _confirmPass.text) {
      ShowSnackBar.show(context, 'Password doesn\'t match');
      return;
    }
    if (formKey.currentState!.validate()) {}
  }
}
