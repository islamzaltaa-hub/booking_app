// ignore_for_file: curly_braces_in_flow_control_structures, camel_case_types

import 'package:booking_app/core/utils/images.dart';
import 'package:booking_app/core/utils/styles.dart';
import 'package:booking_app/features/Log_in_Pages/Verification/Verification.dart';
import 'package:booking_app/features/Log_in_Pages/sign_in/sign_in.dart';
import 'package:booking_app/core/widgets/macktextbox.dart';
import 'package:booking_app/features/Log_in_Pages/widgets/SocialButton.dart';
import 'package:booking_app/core/widgets/main_login_bouttom.dart';
import 'package:flutter/material.dart';

class sign_up extends StatefulWidget {
  const sign_up({super.key});
  static const routeName = 'creat_acount';

  @override
  State<sign_up> createState() => _sign_upState();
}

// ignore: duplicate_ignore
// ignore: camel_case_types
class _sign_upState extends State<sign_up> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

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
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(height: 10),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Sign up",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(height: 30),

                MackTextBox(
                  controller: nameController,
                  label: "Full name",
                  prefixIcon: Icons.person,
                  validator: (val) => val!.isEmpty ? "Enter your name" : null,
                ),

                MackTextBox(
                  controller: emailController,
                  label: "Email address",
                  prefixIcon: Icons.email,
                  keyboardType: TextInputType.emailAddress,
                  validator: (val) => (val == null || !val.contains('@'))
                      ? "Enter a valid email"
                      : null,
                ),

                MackTextBox(
                  controller: passwordController,
                  label: "Password",
                  prefixIcon: Icons.lock,
                  isPassword: true,
                  validator: (val) =>
                      val!.length < 6 ? "Min 6 characters" : null,
                ),

                MackTextBox(
                  controller: confirmPasswordController,
                  label: "Confirm Password",
                  prefixIcon: Icons.lock,
                  isPassword: true,
                  validator: (val) {
                    if (val != passwordController.text)
                      return "Passwords don't match";
                    return null;
                  },
                ),

                const SizedBox(height: 25),

                mainbotuom(
                  text: "SIGN UP",
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (_) => VerificationPage()),
                      );
                    }
                  },
                ),

                const SizedBox(height: 20),
                const Center(
                  child: Text(
                    "OR",
                    style: TextStyle(color: Colors.black54, fontSize: 16),
                  ),
                ),
                const SizedBox(height: 20),

                SocialButton(
                  assetPath: Images.facebook,
                  label: "Continue with Facebook",
                ),
                const SizedBox(height: 25),
                SocialButton(
                  assetPath: Images.google,
                  label: "Continue with Google",
                ),

                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account? "),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => const SignIn()),
                        );
                      },
                      child: Text(
                        "Sign in",
                        style: AppStyles.primaryColor15w300,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
