import 'package:booking_app/core/utils/colors.dart';
import 'package:flutter/material.dart';

Widget buildSearchBar() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            height: 50,
            decoration: BoxDecoration(
              color: const Color.fromARGB(0, 255, 255, 255),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Row(
              children: const [
                Icon(Icons.search),
                SizedBox(width: 8),
                Text("Search..."),
              ],
            ),
          ),
        ),
        const SizedBox(width: 10),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: const Icon(Icons.tune),
        ),
      ],
    ),
  );
}
