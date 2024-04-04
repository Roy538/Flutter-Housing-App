import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HouseInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            children: [
              MenuInfo(
                  imageUrl: 'assets/icons/bedroom.svg',
                  content: '5 bedroom\n3 Master Bedroom'),
              MenuInfo(
                  imageUrl: 'assets/icons/bathroom.svg',
                  content: '5 bathroom\n3 Toilet'),
            ],
          ),
          Row(
            children: [
              MenuInfo(
                  imageUrl: 'assets/icons/kitchen.svg',
                  content: '1 Kitchen\n120 sqtft'),
              MenuInfo(
                  imageUrl: 'assets/icons/parking.svg',
                  content: '2 Parking\n115 sqft'),
            ],
          )
        ],
      ),
    );
  }
}

class MenuInfo extends StatelessWidget {
  final String imageUrl;
  final String content;
  const MenuInfo({Key? key, required this.imageUrl, required this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: Row(
          children: [
            SvgPicture.asset(imageUrl),
            SizedBox(width: 20),
            Text(
              content,
              style:
                  Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}
