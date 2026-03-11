import 'package:booking_app/core/utils/colors.dart';
import 'package:booking_app/features/natifcations/nafications.dart';
import 'package:flutter/material.dart';

PreferredSizeWidget buildHomeAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: AppColors.primaryColor,
    elevation: 0,
    toolbarHeight: 80,
    title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Row(
          children: [
            Text(
              "Current Location",
              style: TextStyle(fontSize: 14, color: Colors.white70),
            ),
            Icon(Icons.keyboard_arrow_down, color: Colors.white),
          ],
        ),
        Row(
          children: [
            Text(
              "New York, USA",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(width: 5),
          ],
        ),
      ],
    ),
    actions: [
      IconButton(
        icon: const Icon(Icons.notifications_outlined),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => Nafications()),
          );
        },
      ),
    ],
  );
}
