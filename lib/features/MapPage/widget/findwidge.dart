import 'package:booking_app/core/utils/colors.dart';
import 'package:booking_app/features/MapPage/wightbar/wightbar.dart';
import 'package:flutter/material.dart';

Widget buildSearchBar2(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: Row(
      children: [
        // زرار الرجوع دايمًا موجود
        Container(
          height: 50,
          width: 50,
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: AppColors.primaryColor,
            ),
            onPressed: () => Navigator.pop(context), // ✅ يرجع للصفحة السابقة
          ),
        ),
        const SizedBox(width: 12),

        Expanded(
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const WhiteSearchPage(),
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: const [
                  Icon(Icons.search, color: Colors.white),
                  SizedBox(width: 12),
                  Text(
                    "Find food or restaurant...",
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
