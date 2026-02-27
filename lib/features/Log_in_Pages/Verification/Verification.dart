import 'package:booking_app/core/utils/styles.dart';
import 'package:booking_app/features/Log_in_Pages/widgets/main_login_bouttom.dart';
import 'package:booking_app/features/home_page/home_page.dart';
import 'package:flutter/material.dart';

class VerificationPage extends StatelessWidget {
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
                  "Verification",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const Text(
              "We’ve sent you the verification code on +1 2620 0323 7631",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(4, (index) {
                return SizedBox(
                  width: 50,
                  child: TextField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                      counterText: "",
                      border: OutlineInputBorder(),
                    ),
                  ),
                );
              }),
            ),

            const SizedBox(height: 30),

            loginboton(
              text: "Continue",
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => HomePage()),
                );
              },
            ),

            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(" Re-send code in ", style: TextStyle(fontSize: 15)),
                GestureDetector(
                  onTap: () {},
                  child: Text("0:20", style: AppStyles.purpleColor15w300),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
