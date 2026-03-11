import 'package:booking_app/core/widgets/macktextbox.dart';
import 'package:booking_app/core/widgets/main_login_bouttom.dart';
import 'package:booking_app/features/home_page/home_page.dart';
import 'package:flutter/material.dart';

class ResetPass extends StatefulWidget {
  const ResetPass({super.key});
  static const routeName = 'forget_pass';

  @override
  State<ResetPass> createState() => _ResetPassState();
}

class _ResetPassState extends State<ResetPass> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Reset Password",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Please enter your email address to request a password reset",
                  style: TextStyle(fontSize: 16, color: Colors.black54),
                ),
                const SizedBox(height: 30),

                MackTextBox(
                  controller: emailController,
                  label: "abc@email.com",
                  prefixIcon: Icons.email_rounded,
                  keyboardType: TextInputType.emailAddress,
                  validator: (val) => (val == null || !val.contains('@'))
                      ? "Enter a valid email"
                      : null,
                ),

                const SizedBox(height: 30),

                mainbotuom(
                  text: "SEND",
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Reset link sent!")),
                      );
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (_) => const HomePage()),
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
