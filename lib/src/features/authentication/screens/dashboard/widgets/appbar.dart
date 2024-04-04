import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trustify/src/constants/text_strings.dart';
import 'package:trustify/src/features/authentication/screens/dashboard/profile/profile.dart';

import '../../../../../constants/colors.dart';
import '../../../../../constants/image_strings.dart';

class DashboardAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DashboardAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Icon(Icons.menu, color: Colors.black),
      title: Text(tAppName, style: Theme.of(context).textTheme.displaySmall),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 20, top: 7),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: tCardBgColor),
          child: IconButton(
              onPressed: () => Get.to(()=> const ProfileScreen()),
              
              icon: const Image(
                image: AssetImage(tUserProfileImage),
              )),
        )
      ],
    );
  }

  @override
  // TODO: implement preferred Size

  Size get preferredSize => const Size.fromHeight(55);
}
