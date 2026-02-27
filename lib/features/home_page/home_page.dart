import 'package:booking_app/core/utils/colors.dart';
import 'package:booking_app/features/home_page/widgets/BottomNavBar.dart';
import 'package:booking_app/features/home_page/widgets/buildHorizontalList.dart';
import 'package:booking_app/features/home_page/widgets/buildInviteCard.dart';
import 'package:booking_app/features/home_page/widgets/categories_list.dart';
import 'package:booking_app/features/home_page/widgets/maindrawer.dart';
import 'package:booking_app/features/home_page/widgets/perfizesiceapppar.dart';
import 'package:booking_app/core/widgets/searc_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static const routeName = 'HomePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: buildHomeAppBar(),
      backgroundColor: const Color(0xFFF5F5F5),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: double.infinity,
                  height: 170,
                  decoration: const BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(33),
                      bottomRight: Radius.circular(33),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: buildSearchBar(),
                  ),
                ),

                CategoriesList(),
              ],
            ),

            const SizedBox(height: 50),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Upcoming Events",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),

            const SizedBox(height: 15),

            buildHorizontalList(context),

            const SizedBox(height: 25),

            buildInviteCard(),

            const SizedBox(height: 25),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Nearby You",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),

            const SizedBox(height: 15),

            buildHorizontalList(context),

            const SizedBox(height: 30),
          ],
        ),
      ),

      bottomNavigationBar: const BottomNavBar(),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFF5669FF),
        shape: const CircleBorder(),
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
