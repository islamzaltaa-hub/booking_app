import 'package:booking_app/core/utils/colors.dart';
import 'package:booking_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CategoriesCard extends StatelessWidget {
  const CategoriesCard({
    super.key,
    required this.txt,
    required this.iconData,
    required this.color,
  });

  final String txt;
  final IconData iconData;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(iconData, color: AppColors.primaryWhite),
          const SizedBox(width: 6),
          Text(txt, style: AppStyles.white16w400),
        ],
      ),
    );
  }
}
