import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:trustify/src/constants/colors.dart';
import 'package:trustify/src/constants/image_strings.dart';
import 'package:trustify/src/constants/sizes.dart';
import 'package:trustify/src/constants/text_strings.dart';
import 'package:trustify/src/features/authentication/screens/dashboard/widgets/appbar.dart';
import 'package:trustify/src/features/authentication/screens/dashboard/widgets/banners.dart';
import 'package:trustify/src/features/authentication/screens/dashboard/widgets/categories.dart';
import 'package:trustify/src/features/authentication/screens/dashboard/widgets/search.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    //variables
    final txtTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: const DashboardAppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDashboardPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(tDashboardTitle, style: txtTheme.bodyMedium),
              Text(tDashboardHeading, style: txtTheme.displayMedium),
              const SizedBox(height: tDashboardPadding),

              //Search Box
              DashboardSearchBox(txtTheme: txtTheme),
              const SizedBox(height: tDashboardPadding),

              //Categories
              DashboardCategories(txtTheme: txtTheme),
              const SizedBox(height: tDashboardPadding),

              //Banner
              DashboardBanners(txtTheme: txtTheme),
              const SizedBox(height: tDashboardPadding2),

              //Top Houses
              Text(tDashboardBannerTopHouses,
                  style: txtTheme.displaySmall?.apply(fontSizeFactor: 1.2)),
              SizedBox(
                height: 200,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
                      width: 320,
                      height: 200,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10, top: 5),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: tCardBgColor),
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: Text(
                                      "Get Affordable Houses",
                                      style: txtTheme.titleLarge,
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  const SizedBox(width: tDashboardCardPadding),
                                  const Image(
                                    image: AssetImage(tTopCourseImage4),
                                    height: 110,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        shape: const CircleBorder()),
                                    onPressed: () {},
                                    child: const Icon(Icons.play_arrow),
                                  ),
                                  const SizedBox(
                                    height: tDashboardCardPadding,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Blue Valley",
                                        style: txtTheme.titleLarge,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Text(
                                        "Near Embu Law Court",
                                        style: txtTheme.bodyMedium,
                                        overflow: TextOverflow.ellipsis,
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 320,
                      height: 200,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10, top: 5),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: tCardBgColor),
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: Text(
                                      "Get your Preffered Hostel",
                                      style: txtTheme.titleLarge,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  const SizedBox(width: tDashboardCardPadding),
                                  const Image(
                                    image: AssetImage(tTopCourseImage3),
                                    height: 110,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        shape: const CircleBorder()),
                                    onPressed: () {},
                                    child: const Icon(Icons.play_arrow),
                                  ),
                                  const SizedBox(
                                    height: tDashboardCardPadding,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Kutus",
                                        style: txtTheme.titleLarge,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Text(
                                        "Opposite Kirinyaga University.",
                                        style: txtTheme.bodyMedium,
                                        overflow: TextOverflow.ellipsis,
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 320,
                      height: 200,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10, top: 5),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: tCardBgColor),
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: Text(
                                      "Get Affordable Houses",
                                      style: txtTheme.titleLarge,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  const SizedBox(width: tDashboardCardPadding),
                                  const Image(
                                    image: AssetImage(tTopCourseImage1),
                                    height: 110,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        shape: const CircleBorder()),
                                    onPressed: () {},
                                    child: const Icon(Icons.play_arrow),
                                  ),
                                  const SizedBox(
                                    height: tDashboardCardPadding,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "True Comfort",
                                        style: txtTheme.titleLarge,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Text(
                                        "Near Chuka University",
                                        style: txtTheme.bodyMedium,
                                        overflow: TextOverflow.ellipsis,
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 320,
                      height: 200,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10, top: 5),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: tCardBgColor),
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: Text(
                                      "Convenient Housing",
                                      style: txtTheme.titleLarge,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  const SizedBox(width: tDashboardCardPadding),
                                  const Image(
                                    image: AssetImage(tTopCourseImage2),
                                    height: 110,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        shape: const CircleBorder()),
                                    onPressed: () {},
                                    child: const Icon(Icons.play_arrow),
                                  ),
                                  const SizedBox(
                                    height: tDashboardCardPadding,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Njukiri",
                                        style: txtTheme.titleLarge,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Text(
                                        "Near Camp Ndunda, Embu",
                                        style: txtTheme.bodyMedium,
                                        overflow: TextOverflow.ellipsis,
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
