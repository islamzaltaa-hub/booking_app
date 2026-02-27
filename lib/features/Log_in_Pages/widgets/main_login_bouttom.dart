import 'package:booking_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class loginboton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const loginboton({Key? key, required this.text, required this.onPressed})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: AppStyles.primaryColor15w300.color,
          borderRadius: BorderRadius.circular(12),
        ),
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(width: 18),
            Text(text, style: TextStyle(color: Colors.white, fontSize: 16)),
            Container(
              decoration: BoxDecoration(
                color: Colors.blue.shade700,
                shape: BoxShape.circle,
              ),
              padding: EdgeInsets.all(7),
              child: Icon(Icons.arrow_forward, color: Colors.white, size: 18),
            ),
          ],
        ),
      ),
    );
  }
}
