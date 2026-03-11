import 'package:flutter/material.dart';

SingleChildScrollView aboutp() {
  return SingleChildScrollView(
    padding: const EdgeInsets.all(24),
    child: RichText(
      text: const TextSpan(
        style: TextStyle(color: Colors.black54, fontSize: 15, height: 1.5),
        children: [
          TextSpan(
            text:
                "Enjoy your favorite dishes and a lovely time with your friends and family. Food from local food trucks will be available for purchase. ",
          ),
          TextSpan(
            text: "Read More",
            style: TextStyle(
              color: Color(0xFF4C6FFF),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ),
  );
}
