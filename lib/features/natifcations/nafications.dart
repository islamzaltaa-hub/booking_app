import 'package:booking_app/core/utils/images.dart';
import 'package:booking_app/features/natifcations/widget/macknaf.dart';
import 'package:flutter/material.dart';

class Nafications extends StatelessWidget {
  const Nafications({super.key});
  static const routeName = 'notifications';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Notification",
          style: TextStyle(
            fontSize: 24,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          buildNotificationItem(
            name: "David Silbia",
            actionText: "Invite Jo Malone London’s Mother’s",
            time: "Just now",
            image: Images.user1,
            hasButtons: true,
          ),
          buildNotificationItem(
            name: "Adnan Safi",
            actionText: "Started following you",
            time: "5 min ago",
            image: Images.user2,
            hasButtons: false,
          ),
          buildNotificationItem(
            name: "Joan Baker",
            actionText: "Invite A virtual Evening of Smooth Jazz",
            time: "20 min ago",
            image: Images.user3,
            hasButtons: true,
          ),
          buildNotificationItem(
            name: "Ronald C. Kinch",
            actionText: "Like you events",
            time: "1 hr ago",
            image: Images.user4,
            hasButtons: false,
          ),
          buildNotificationItem(
            name: "Adnan Safi",
            actionText: "Started following you",
            time: "5 min ago",
            image: Images.user5,
            hasButtons: false,
          ),
          buildNotificationItem(
            name: "Joan Baker",
            actionText: "Invite A virtual Evening of Smooth Jazz",
            time: "20 min ago",
            image: Images.user7,
            hasButtons: true,
          ),
          buildNotificationItem(
            name: "Ronald C. Kinch",
            actionText: "Like you events",
            time: "1 hr ago",
            image: Images.user8,
            hasButtons: false,
          ),
          buildNotificationItem(
            name: "Ronald C. Kinch",
            actionText: "Like you events",
            time: "1 hr ago",
            image: Images.user9,
            hasButtons: false,
          ),
        ],
      ),
    );
  }
}
