import 'package:booking_app/core/utils/images.dart';
import 'package:booking_app/features/OrgnizeProfile/orgnizeprofile.dart';
import 'package:booking_app/features/ProfilePage/widget/ProfileHeder.dart';
import 'package:booking_app/features/ProfilePage/widget/appbrofilebar.dart';
import 'package:booking_app/features/ProfilePage/widget/bildcolum.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  static const routeName = 'profile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: profileBar(
        context: context,
        title: "My Profile",
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(height: 20),
            ProfileHeader(
              imagePath: Images.personprofile,
              name: "Ashfak Sayem",
              followers: "346",
              following: "350",
            ),

            const SizedBox(height: 25),

            OutlinedButton.icon(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => orgnizeprofile()),
                );
              },
              icon: const Icon(Icons.edit_note, color: Color(0xFF4C6FFF)),
              label: const Text(
                "Edit Profile",
                style: TextStyle(color: Color(0xFF4C6FFF)),
              ),
              style: OutlinedButton.styleFrom(
                minimumSize: const Size(150, 45),
                side: const BorderSide(color: Color(0xFF4C6FFF)),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 30),

            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "About Me",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            RichText(
              text: TextSpan(
                style: const TextStyle(
                  color: Colors.black54,
                  fontSize: 15,
                  height: 1.5,
                ),
                children: [
                  const TextSpan(
                    text:
                        "Enjoy your favorite dishes and a lovely your friends and family and have a great time. Food from local food trucks will be available for purchase. ",
                  ),
                  TextSpan(
                    text: "Read More",
                    style: const TextStyle(
                      color: Color(0xFF4C6FFF),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Interest",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.edit, size: 16),
                  label: const Text("CHANGE"),
                  style: TextButton.styleFrom(
                    foregroundColor: const Color.fromARGB(255, 108, 108, 200),
                    backgroundColor: const Color(0xFFF5F5FF),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),

            Wrap(
              spacing: 8.0,
              runSpacing: 4.0,
              children: [
                buildInterestChip("Games Online", const Color(0xFF6B8EFF)),
                buildInterestChip("Concert", const Color(0xFFFF6B6B)),
                buildInterestChip("Music", const Color(0xFFFF9F6B)),
                buildInterestChip("Art", const Color(0xFF9B6BFF)),
                buildInterestChip("Movie", const Color(0xFF2DCE89)),
                buildInterestChip("Others", const Color(0xFF43CCEF)),
              ],
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
