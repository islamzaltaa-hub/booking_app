import 'package:booking_app/features/home_page/widgets/evendetaails.dart';
import 'package:flutter/material.dart';

Widget buildEventCard(
  BuildContext context, {
  required String image,
  required String title,
  required String location,
}) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, EventDetailsPage.routeName);
    },
    child: Container(
      width: 250,
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 5)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
            child: Image.asset(
              image,
              height: 120,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(location, style: const TextStyle(color: Colors.grey)),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
