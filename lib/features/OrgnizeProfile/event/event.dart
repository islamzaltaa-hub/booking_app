import 'package:booking_app/core/utils/images.dart';
import 'package:booking_app/core/widgets/cardsbilder.dart';
import 'package:flutter/material.dart';

ListView eventp(BuildContext context) {
  return ListView(
    padding: const EdgeInsets.all(24),
    children: [
      buildEcards(
        context,
        image: Images.miny1,
        title: "IJo malone london’s mother’s day ",
        location: "London, UK",
      ),
      const SizedBox(height: 15),
      buildEcards(
        context,
        image: Images.miny2,
        title: "Jo Malone Women's leadership conference",
        location: "Gala Center",
      ),
      buildEcards(
        context,
        image: Images.miny2,
        title: "Jo Malone Concert",
        location: "Gala Center",
      ),
      buildEcards(
        context,
        image: Images.miny3,
        title: "Jo Malone Concert",
        location: "Gala Center",
      ),
      buildEcards(
        context,
        image: Images.miny4,
        title: "Jo Malone Concert",
        location: "Gala Center",
      ),
      buildEcards(
        context,
        image: Images.miny5,
        title: "A virtual evening of\n smooth jazz",
        location: "Gala Center",
      ),
    ],
  );
}
