import 'package:flutter/material.dart';
import 'package:booking_app/core/utils/images.dart';
import 'package:booking_app/core/widgets/cardsbilder.dart';
import 'package:booking_app/core/widgets/searc_bar.dart';

class WhiteSearchPage extends StatelessWidget {
  const WhiteSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Search",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildSearchBar(),

            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  buildEcards(
                    context,
                    image: Images.miny1,
                    title: "International Band Music",
                    location: "36 Guild Street London, UK",
                  ),
                  buildEcards(
                    context,
                    image: Images.miny2,
                    title: "Jo Malone Concert",
                    location: "Gala Convention Center",
                  ),
                  buildEcards(
                    context,
                    image: Images.miny3,
                    title: "Jo Malone London’s Mother’s Day Presents",
                    location: "Gala Convention Center",
                  ),
                  buildEcards(
                    context,
                    image: Images.miny4,
                    title: "Jo Malone Concert",
                    location: "Gala Convention Center",
                  ),
                  buildEcards(
                    context,
                    image: Images.miny2,
                    title: "Jo Malone Concert",
                    location: "Gala Convention Center",
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
