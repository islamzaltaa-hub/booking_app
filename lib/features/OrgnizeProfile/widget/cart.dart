import 'package:flutter/material.dart';

Widget buildReviewCard({
  required String name,
  required double rating,
  required String comment,
  required String image,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(radius: 20, backgroundImage: AssetImage(image)),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "10 Feb",
                    style: TextStyle(color: Colors.grey[400], fontSize: 12),
                  ),
                ],
              ),
              Row(
                children: List.generate(
                  5,
                  (index) => Icon(
                    Icons.star,
                    size: 16,
                    color: index < rating ? Colors.orange : Colors.grey[300],
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Text(
                comment,
                style: const TextStyle(color: Colors.black87, height: 1.4),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
