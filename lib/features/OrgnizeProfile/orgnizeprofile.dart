import 'package:booking_app/core/utils/images.dart';

import 'package:booking_app/features/OrgnizeProfile/about/about.dart';
import 'package:booking_app/features/OrgnizeProfile/event/event.dart';
import 'package:booking_app/features/OrgnizeProfile/revies/revie.dart';
import 'package:booking_app/features/OrgnizeProfile/widget/actionbuton.dart';
import 'package:booking_app/features/ProfilePage/widget/ProfileHeder.dart';
import 'package:booking_app/features/ProfilePage/widget/appbrofilebar.dart';
import 'package:flutter/material.dart';

class orgnizeprofile extends StatelessWidget {
  const orgnizeprofile({super.key});
  static const routeName = 'profile';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: profileBar(
          context: context,
          title: "Profile",
          actions: [
            IconButton(
              icon: const Icon(Icons.more_vert, color: Colors.black),
              onPressed: () {},
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  ProfileHeader(
                    imagePath: Images.personprofile,
                    name: "David Silbia",
                    followers: "346",
                    following: "350",
                  ),
                  const SizedBox(height: 20),
                  buildActionButtons(),
                  const SizedBox(height: 20),
                ],
              ),
            ),

            const TabBar(
              labelColor: Color(0xFF5669FF),
              unselectedLabelColor: Colors.grey,
              indicatorColor: Color(0xFF5669FF),
              indicatorSize: TabBarIndicatorSize.label,
              tabs: [
                Tab(text: "ABOUT"),
                Tab(text: "EVENT"),
                Tab(text: "REVIEWS"),
              ],
            ),

            Expanded(
              child: TabBarView(
                children: [aboutp(), eventp(context), reviewp()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
