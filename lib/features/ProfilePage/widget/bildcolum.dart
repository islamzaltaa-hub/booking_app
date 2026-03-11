import 'package:flutter/material.dart';

Widget buildStatColumn(String number, String label) {
  return Column(
    children: [
      Text(
        number,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      Text(label, style: const TextStyle(color: Colors.grey)),
    ],
  );
}

Widget buildInterestChip(String label, Color color) {
  return Chip(
    label: Text(
      label,
      style: const TextStyle(color: Colors.white, fontSize: 13),
    ),
    backgroundColor: color,
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
      side: BorderSide.none,
    ),
  );
}
