import 'package:booking_app/core/widgets/macktextbox.dart';

import 'package:booking_app/core/widgets/main_login_bouttom.dart';
import 'package:booking_app/features/home_page/home_page.dart';
import 'package:flutter/material.dart';

class resst_pass extends StatelessWidget {
  static const routeName = 'forget_pass';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back, color: Colors.black),
        backgroundColor: Colors.white,
      ),

      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Row(
              children: const [
                Text(
                  "Resset Password",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const Text(
              "Please enter your email address to request a password reset",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.left,
            ),
            const SizedBox(height: 30),

            macktextbox(
              label: "abc@email.com",
              prefixIcon: Icons.email_rounded,
            ),

            const SizedBox(height: 30),

            mainbotuom(
              text: "SEND",
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => HomePage()),
                );
              },
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
