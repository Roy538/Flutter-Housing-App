import 'package:flutter/material.dart';
import 'package:trustify/model/house.dart';
import 'package:trustify/screen/detail/widget/about.dart';
import 'package:trustify/screen/detail/widget/content_intro.dart';
import 'package:trustify/screen/detail/widget/detail_app_bar.dart';
import 'package:trustify/screen/detail/widget/house_info.dart';

class DetailPage extends StatelessWidget {
  final House house;
  const DetailPage({Key? key, required this.house}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailAppBar(house: house),
            SizedBox(height: 20),
            ContentIntro(house: house),
            SizedBox(height: 20),
            HouseInfo(),
            SizedBox(height: 20),
            About(),
            SizedBox(height: 25),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  backgroundColor: Theme.of(context).primaryColor,
                ),
                child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Text('Contact Owner',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
