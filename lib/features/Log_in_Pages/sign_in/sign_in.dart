import 'package:booking_app/core/utils/images.dart';
import 'package:booking_app/core/utils/styles.dart';
import 'package:booking_app/features/Log_in_Pages/resst_pass/resst_pass.dart';
import 'package:booking_app/core/widgets/macktextbox.dart';
import 'package:booking_app/features/Log_in_Pages/sign_up/sign_up.dart';
import 'package:booking_app/features/Log_in_Pages/widgets/SocialButton.dart';
import 'package:booking_app/features/Log_in_Pages/widgets/main_login_bouttom.dart';
import 'package:booking_app/features/home_page/home_page.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});
  static const routeName = 'SignIn';

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool rememberMe = false;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              Center(child: Image.asset(Images.logo2, height: 90)),

              SizedBox(height: 20),

              Text(
                "Sign in",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
              ),

              SizedBox(height: 20),

              macktextbox(
                label: "abc@email.com",
                prefixIcon: Icons.email_rounded,
              ),

              macktextbox(
                label: "Your Password",
                prefixIcon: Icons.lock,
                suffixIcon: Icons.visibility_off_outlined,
                obscure: true,
              ),

              SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.toggle_on, size: 40, color: Color(0xFF4C6FFF)),
                      Text("Remember me"),
                    ],
                  ),

                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => resst_pass()),
                      );
                    },
                    child: Text(
                      "Forgot password?",
                      style: TextStyle(color: Colors.black87),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20),

              loginboton(
                text: "SIGN IN",
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => HomePage()),
                  );
                },
              ),
              SizedBox(height: 30),
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
                  Text("Don't have an account? "),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => sign_up()),
                      );
                    },
                    child: Text("Sign up", style: AppStyles.primaryColor15w300),
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
