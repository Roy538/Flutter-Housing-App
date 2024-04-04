import 'package:flutter/material.dart';

class DashboardCategoriesModel {
  final String title;
  final String heading;
  final String subHeading;
  final VoidCallback? onPress;

  DashboardCategoriesModel(this.title, this.heading, this.subHeading, this.onPress);
  static List<DashboardCategoriesModel> list = [
    DashboardCategoriesModel("Rentals", "Bed-Sitter", "10 Rooms", null),
    DashboardCategoriesModel("Hostels", "Single Rooms", "7 Rooms", null),
    DashboardCategoriesModel("AirBnB", "Bed & Breakfast", "3 Rooms", null),
    DashboardCategoriesModel("Flats", "Single Rooms", "5 Rooms", null),
    DashboardCategoriesModel("Parking", "200 Metres sq", "Over 50 slots", null),
  ];
}
