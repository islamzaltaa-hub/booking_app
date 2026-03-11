// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:booking_app/core/utils/images.dart';
import 'package:booking_app/core/utils/styles.dart';
import 'package:booking_app/features/Log_in_Pages/resst_pass/resst_pass.dart';
import 'package:booking_app/core/widgets/macktextbox.dart';
import 'package:booking_app/features/Log_in_Pages/sign_up/sign_up.dart';
import 'package:booking_app/features/Log_in_Pages/widgets/SocialButton.dart';
import 'package:booking_app/core/widgets/main_login_bouttom.dart';
import 'package:booking_app/features/home_page/home_page.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});
  static const routeName = 'SignIn';

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 50),
                Center(child: Image.asset(Images.logo2, height: 90)),
                const SizedBox(height: 20),

                const Text(
                  "Sign in",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 20),

                MackTextBox(
                  controller: emailController,
                  label: "abc@email.com",
                  prefixIcon: Icons.email_rounded,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty)
                      // ignore: duplicate_ignore
                      // ignore: curly_braces_in_flow_control_structures
                      return "Email is required";
                    if (!value.contains('@')) return "Enter a valid email";
                    return null;
                  },
                ),

                MackTextBox(
                  controller: passwordController,
                  label: "Your Password",
                  prefixIcon: Icons.lock,
                  isPassword: true,
                  validator: (value) {
                    if (value == null || value.isEmpty)
                      return "Password is required";
                    if (value.length < 6) return "Password too short";
                    return null;
                  },
                ),

                const SizedBox(height: 10),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.toggle_on,
                          size: 40,
                          color: Color(0xFF4C6FFF),
                        ),
                        const Text("Remember me"),
                      ],
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => ResetPass()),
                        );
                      },
                      child: const Text(
                        "Forgot password?",
                        style: TextStyle(color: Colors.black87),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                mainbotuom(
                  text: "SIGN IN",
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (_) => const HomePage()),
                      );
                    }
                  },
                ),

                const SizedBox(height: 30),
                const Center(
                  child: Text(
                    "OR",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),

                const SizedBox(height: 20),
                Column(
                  children: [
                    SocialButton(
                      assetPath: Images.facebook,
                      label: "Continue with Facebook",
                    ),
                    const SizedBox(height: 25),
                    SocialButton(
                      assetPath: Images.google,
                      label: "Continue with Google",
                    ),
                  ],
                ),
                const SizedBox(height: 25),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account? "),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => sign_up()),
                        );
                      },
                      child: Text(
                        "Sign up",
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
