import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:trustify/src/common_widgets/form/form_header_widget.dart';
import 'package:trustify/src/constants/colors.dart';
import 'package:trustify/src/constants/image_strings.dart';
import 'package:trustify/src/constants/sizes.dart';
import 'package:trustify/src/constants/text_strings.dart';
import 'package:trustify/src/features/authentication/screens/login/login_screen.dart';
import 'package:trustify/src/features/authentication/screens/signup/widgets/signup_form_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              children: [
                const FormHeaderWidget(
                  image: tWelcomeScreenImage,
                  title: tSignUpTitle,
                  subTitle: tSignUpSubTitle,
                ),
                const SignUpFormWidget(),
                Column(
                  children: [
                    const Text("OR"),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        onPressed: () {},
                        icon: const Image(
                          image: AssetImage(tGoogleLogoImage),
                          width: 20.0,
                        ),
                        label: Text(tSignInWithGoogle.toUpperCase()),
                      ),
                    ),
                    TextButton(
                        onPressed: () => Get.to(()=> const LoginScreen()),
                        child: Text.rich(TextSpan(children: [
                          TextSpan(
                              text: tAlreadyHaveAnAccount,
                              style: Theme.of(context).textTheme.bodyLarge),
                          TextSpan(text: tLogin.toUpperCase()),
                        ])))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
