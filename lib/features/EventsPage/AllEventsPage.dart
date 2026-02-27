import 'package:booking_app/core/widgets/cardsbilder.dart';
import 'package:flutter/material.dart';
import 'package:booking_app/core/utils/images.dart';

class AllEventsPage extends StatelessWidget {
  const AllEventsPage({super.key});
  static const routeName = 'all-events';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,

        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),

        titleSpacing: 0,
        title: const Text(
          "Events",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        // الأيقونات ناحية اليمين
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black),
            onPressed: () {
              // Action for search
            },
          ),
          IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.black),
            onPressed: () {
              // Action for more options
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          buildEcards(
            context,
            image: Images.miny1,
            title: "International Band Music",
            location: "36 Guild Street London, UK",
          ),
          const SizedBox(height: 16),
          buildEcards(
            context,
            image: Images.miny2,
            title: "Jo Malone Concert",
            location: "Gala Convention Center",
          ),
          const SizedBox(height: 16),
          buildEcards(
            context,
            image: Images.miny3,
            title: "Jo Malone London’s Mother’s Day Presents",
            location: "Gala Convention Center",
          ),
          const SizedBox(height: 16),
          buildEcards(
            context,
            image: Images.miny4,
            title: "Jo Malone Concert",
            location: "Gala Convention Center",
          ),
          const SizedBox(height: 16),
          buildEcards(
            context,
            image: Images.miny5,
            title: "Jo Malone Concert",
            location: "Gala Convention Center",
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
