import 'package:booking_app/core/utils/images.dart';
import 'package:booking_app/core/widgets/cardsbilder.dart';
import 'package:booking_app/features/MapPage/widget/findwidge.dart';
import 'package:booking_app/features/home_page/widgets/categories_list.dart';
import 'package:flutter/material.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key});
  static const routeName = 'map';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Images.map),
                fit: BoxFit.cover,
              ),
            ),
          ),

          SafeArea(
            child: Column(
              children: [buildSearchBar2(context), const CategoriesList()],
            ),
          ),

          Positioned(
            bottom: 40,
            left: 0,
            right: 0,
            child: SizedBox(
              height: 110,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
