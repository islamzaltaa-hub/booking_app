import 'package:booking_app/features/home_page/widgets/category_card.dart';
import 'package:flutter/material.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> titles = ["Music", "Sport", "Food", "Movies"];
    List<IconData> icons = [
      Icons.music_note,
      Icons.sports_soccer,
      Icons.fastfood,
      Icons.movie,
    ];
    List<Color> colors = [
      Colors.purple,
      Colors.green,
      Colors.orange,
      Colors.blue,
    ];

    return Padding(
      padding: const EdgeInsets.only(top: 150, left: 24),
      child: SizedBox(
        height: 39,
        child: ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(width: 11),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return CategoriesCard(
              txt: titles[index],
              iconData: icons[index],
              color: colors[index],
            );
          },
          itemCount: titles.length,
        ),
      ),
    );
  }
}
