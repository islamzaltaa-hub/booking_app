import 'package:booking_app/features/MapPage/MapPage.dart';
import 'package:booking_app/features/ProfilePage/ProfilePage.dart';
import 'package:booking_app/features/EventsPage/EventsPage.dart';
import 'package:booking_app/features/home_page/home_page.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 0;
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });

    if (index == 0) {
      Navigator.pushNamed(context, HomePage.routeName);
    } else if (index == 1) {
      Navigator.pushNamed(context, EventsPage.routeName);
    } else if (index == 2) {
      Navigator.pushNamed(context, MapPage.routeName);
    } else if (index == 3) {
      Navigator.pushNamed(context, ProfilePage.routeName);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 10,
      color: const Color.fromARGB(192, 228, 242, 243),
      child: SizedBox(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.explore, color: Color(0xFF5669FF)),
              onPressed: () => onItemTapped(0),
            ),
            IconButton(
              icon: const Icon(Icons.event),
              onPressed: () => onItemTapped(1),
            ),
            const SizedBox(width: 40),
            IconButton(
              icon: const Icon(Icons.map),
              onPressed: () => onItemTapped(2),
            ),
            IconButton(
              icon: const Icon(Icons.person),
              onPressed: () => onItemTapped(3),
            ),
          ],
        ),
      ),
    );
  }
}
