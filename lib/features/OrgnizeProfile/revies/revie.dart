import 'package:booking_app/core/utils/images.dart';
import 'package:booking_app/features/OrgnizeProfile/widget/cart.dart';
import 'package:flutter/material.dart';

ListView reviewp() {
  return ListView(
    padding: const EdgeInsets.all(24),
    children: [
      buildReviewCard(
        name: "Rocks Velasquez",
        rating: 4,
        comment:
            "Cinemas is the ultimate experience to see new movies in Gold Class or Vmax. Find a cinema near you..",
        image: Images.personprofile,
      ),
      buildReviewCard(
        name: "Angelina  ",
        rating: 5,
        comment: "Best experience ever! Highly recommended.",
        image: Images.images3,
      ),
      buildReviewCard(
        name: "Angelina Jolie",
        rating: 3,
        comment: " Not bad bro.",
        image: Images.images2,
      ),
      buildReviewCard(
        name: "  alexander batern  ",
        rating: 2,
        comment: "worst experience ever!  ",
        image: Images.images4,
      ),
    ],
  );
}
