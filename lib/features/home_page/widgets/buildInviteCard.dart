// ignore_for_file: file_names

import 'package:booking_app/core/utils/images.dart';
import 'package:flutter/material.dart';

Widget buildInviteCard() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: Container(
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: const DecorationImage(
          image: AssetImage(Images.offer),

          fit: BoxFit.cover,
        ),
      ),
    ),
  );
}
