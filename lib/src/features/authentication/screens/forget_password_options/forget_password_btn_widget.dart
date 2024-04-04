import 'package:flutter/material.dart';


class ForgetPasswordBtnWidget extends StatelessWidget {
  const ForgetPasswordBtnWidget(
      {required this.SubTitle,
      required this.btnIcon,
      required this.title,
      required this.OnTap,
      Key? key})
      : super(key: key);
  final IconData btnIcon;
  final String title, SubTitle;
  final VoidCallback OnTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: OnTap,
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.grey.shade200,
        ),
        child: Row(
          children: [
            Icon(btnIcon, size: 60.0),
            const SizedBox(width: 10.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: Theme.of(context).textTheme.titleLarge),
                Text(SubTitle, style: Theme.of(context).textTheme.bodyMedium),
              ],
            )
          ],
        ),
      ),
    );
  }
}
