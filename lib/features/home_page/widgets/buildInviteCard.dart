import 'package:flutter/material.dart';

Widget buildInviteCard() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: Container(
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: const DecorationImage(
          image: AssetImage(
            "assets/images/WhatsApp Image 2026-02-27 at 8.59.42 AM.jpeg",
          ),
          fit: BoxFit.cover,
        ),
      ),
    ),
  );
}
