import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final String assetPath;
  final String label;

  const SocialButton({Key? key, required this.assetPath, required this.label})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300, width: 1),
      ),
      child: Row(
        children: [
          Image.asset(assetPath, height: 22, width: 22),
          SizedBox(width: 12),
          Text(label, style: TextStyle(fontSize: 14)),
        ],
      ),
    );
  }
}
