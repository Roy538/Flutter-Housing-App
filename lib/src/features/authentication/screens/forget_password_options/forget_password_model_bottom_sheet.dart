import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trustify/src/constants/sizes.dart';
import 'package:trustify/src/features/authentication/screens/forget_password_mail/forget_password_mail.dart';
import 'package:trustify/src/features/authentication/screens/forget_password_options/forget_password_btn_widget.dart';

import '../../../../constants/text_strings.dart';

class ForgetPasswordScreen {
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      builder: (context) => Container(
        padding: EdgeInsets.all(tDefaultSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(tForgetPasswordTitle,
                style: Theme.of(context).textTheme.displayMedium),
            Text(tForgetPasswordSubTitle,
                style: Theme.of(context).textTheme.bodyMedium),
            const SizedBox(height: 30.0),
            ForgetPasswordBtnWidget(
              btnIcon: Icons.mail_outline_rounded,
              title: tEmail,
              SubTitle: tResetViaEMail,
              OnTap: () {
                Navigator.pop(context);
                Get.to(() => const ForgetPasswordMailScreen());
              },
            ),
            const SizedBox(height: 20.0),
            ForgetPasswordBtnWidget(
              btnIcon: Icons.mobile_friendly_rounded,
              title: tPhoneNo,
              SubTitle: tResetViaPhone,
              OnTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
