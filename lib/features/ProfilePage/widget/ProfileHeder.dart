import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  final String imagePath;
  final String name;
  final String followers;
  final String following;

  const ProfileHeader({
    super.key,
    required this.imagePath,
    required this.name,
    required this.followers,
    required this.following,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(radius: 60, backgroundImage: AssetImage(imagePath)),
        const SizedBox(height: 15),
        Text(
          name,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildStatColumn(following, "Following"),
            Container(
              width: 1,
              height: 30,
              color: Colors.grey[300],
              margin: const EdgeInsets.symmetric(horizontal: 30),
            ),
            _buildStatColumn(followers, "Followers"),
          ],
        ),
      ],
    );
  }

  Widget _buildStatColumn(String count, String label) {
    return Column(
      children: [
        Text(
          count,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 5),
        Text(
          label,
          style: const TextStyle(fontSize: 14, color: Colors.black54),
        ),
      ],
    );
  }
}
