import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:trustify/src/common_widgets/form/form_header_widget.dart';
import 'package:trustify/src/constants/image_strings.dart';
import 'package:trustify/src/constants/sizes.dart';
import 'package:trustify/src/constants/text_strings.dart';
import 'package:trustify/src/features/authentication/screens/login/login_footer_widget.dart';
import 'package:trustify/src/features/authentication/screens/login/login_form_widget.dart';
import 'package:trustify/src/features/authentication/screens/login/login_header_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                // LoginHeaderWidget(),
                FormHeaderWidget(
                  image: tWelcomeScreenImage,
                  title: tLogin,
                  subTitle: tLoginSubTitle,
                ),
                LoginForm(),
                LoginFooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

