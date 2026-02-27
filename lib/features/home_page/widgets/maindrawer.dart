import 'package:booking_app/core/utils/images.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  Widget buildDrawerItem(String title, IconData icon) {
    return ListTile(
      leading: Icon(icon, color: Colors.black),
      title: Text(title, style: TextStyle(color: Colors.black)),
      onTap: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DrawerHeader(
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Image.asset(Images.profile1, height: 40),
                    const SizedBox(width: 10),
                    Text(
                      "Ashfak Sayem",
                      style: const TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          buildDrawerItem("My Profile", Icons.person),
          buildDrawerItem("Message", Icons.messenger_outline),
          buildDrawerItem("Calendar", Icons.calendar_today),
          buildDrawerItem("Book Market", Icons.bookmark_border),
          buildDrawerItem("Contact Us", Icons.email_outlined),
          buildDrawerItem("Settings", Icons.settings),
          buildDrawerItem("Help & FAQs", Icons.help_outline),
          buildDrawerItem("Sign Out", Icons.logout),

          const Spacer(),

          Container(
            width: 170,
            height: 50,
            color: const Color(0x3300F8FF),
            child: ListTile(
              leading: const Icon(Icons.star, color: Color(0xFF00F8FF)),
              title: const Text(
                "Update Pro",
                style: TextStyle(color: Color(0xFF00F8FF)),
              ),
              onTap: () {},
            ),
          ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
