import 'package:flutter/material.dart';

Widget buildActionButtons() {
  return Row(
    children: [
      Expanded(
        child: ElevatedButton.icon(
          onPressed: () {},
          icon: const Icon(
            Icons.person_add_alt_1_outlined,
            color: Colors.white,
          ),
          label: const Text(
            "Follow",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF5669FF),
            padding: const EdgeInsets.symmetric(vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
      const SizedBox(width: 15),
      Expanded(
        child: OutlinedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.messenger_outline, color: Color(0xFF5669FF)),
          label: const Text(
            "Messages",
            style: TextStyle(color: Color(0xFF5669FF), fontSize: 16),
          ),
          style: OutlinedButton.styleFrom(
            side: const BorderSide(color: Color(0xFF5669FF)),
            padding: const EdgeInsets.symmetric(vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    ],
  );
}
