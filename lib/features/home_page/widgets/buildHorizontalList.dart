import 'package:booking_app/core/utils/images.dart';
import 'package:booking_app/features/home_page/widgets/even_card.dart';
import 'package:flutter/material.dart';

Widget buildHorizontalList(BuildContext context) {
  return SizedBox(
    height: 220,
    child: ListView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.only(left: 16),
      children: [
        buildEventCard(
          context,
          image: Images.Horizonta1,
          title: "International Band Music",
          location: "London, UK",
        ),
        buildEventCard(
          context,
          image: Images.Horizonta2,
          title: "Jo Malone Concert",
          location: "Paris, France",
        ),
      ],
    ),
  );
}
