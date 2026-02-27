import 'package:booking_app/core/utils/colors.dart';
import 'package:flutter/material.dart';

PreferredSizeWidget buildHomeAppBar() {
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
        onPressed: () {},
        icon: const Icon(Icons.notifications_outlined),
      ),
    ],
  );
}
