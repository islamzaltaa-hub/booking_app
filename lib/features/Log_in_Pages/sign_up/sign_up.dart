import 'package:booking_app/core/utils/images.dart';
import 'package:booking_app/core/utils/styles.dart';
import 'package:booking_app/features/Log_in_Pages/Verification/Verification.dart';
import 'package:booking_app/features/Log_in_Pages/sign_in/sign_in.dart';
import 'package:booking_app/core/widgets/macktextbox.dart';
import 'package:booking_app/features/Log_in_Pages/widgets/SocialButton.dart';
import 'package:booking_app/features/Log_in_Pages/widgets/main_login_bouttom.dart';
import 'package:flutter/material.dart';

class sign_up extends StatelessWidget {
  static const routeName = 'creat_acount';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const SizedBox(height: 10),
              Row(
                children: const [
                  Text(
                    "Sign up",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const SizedBox(height: 30),

              macktextbox(label: "Name", prefixIcon: Icons.person),
              macktextbox(label: "Email adress", prefixIcon: Icons.email),
              macktextbox(
                label: "Password",
                prefixIcon: Icons.lock,
                suffixIcon: Icons.hide_source,
              ),
              macktextbox(
                label: "Confirm Password",
                prefixIcon: Icons.lock,
                suffixIcon: Icons.hide_source,
              ),

              const SizedBox(height: 25),

              loginboton(
                text: "SIGN UP",
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => VerificationPage()),
                  );
                },
              ),

              const SizedBox(height: 10),

              const SizedBox(height: 20),
              Center(
                child: Text(
                  "OR",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              SizedBox(height: 20),
              Column(
                children: [
                  SocialButton(
                    assetPath: Images.facebook,
                    label: "Continue with Facebook",
                  ),
                  SizedBox(height: 25),
                  SocialButton(
                    assetPath: Images.google,
                    label: "Continue with Google",
                  ),
                ],
              ),
              SizedBox(height: 25),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?"),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => SignIn()),
                      );
                    },
                    child: Text(
                      "Signin  ",
                      style: AppStyles.primaryColor15w300,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
