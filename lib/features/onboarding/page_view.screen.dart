import 'package:booking_app/core/utils/images.dart';
import 'package:booking_app/features/Log_in_Pages/sign_in/sign_in.dart';

import 'package:booking_app/features/onboarding/widgets/page_view_items.dart';

import 'package:flutter/material.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({super.key});

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  final PageController controller = PageController();

  int currentPage = 0;

  final List items = [
    {
      "image": Images.OnboardingScreenpage1,
      "title": " Explore Upcoming and Nearby Events ",
      "content":
          " In publishing and graphic design, Lorem is a placeholder text commonly ",
    },
    {
      "image": Images.OnboardingScreenpage2,
      "title": " Web Have Modern Events Calendar Feature",
      "content":
          "  In publishing and graphic design, Lorem is a placeholder text commonly  ",
    },
    {
      "image": Images.OnboardingScreenpage3,
      "title":
          "  To Look Up More Events or Activities Nearby By Map  To Look Up More Events or Activities Nearby By Map",
      "content":
          " In publishing and graphic design, Lorem is a placeholder text commonly  ",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /// 🔹 PageView
          PageViewItems(
            controller: controller,
            items: items,
            currentPage: currentPage,
            onPageChanged: (index) {
              setState(() {
                currentPage = index;
              });
            },
          ),

          /// 🔹 Buttons في الأسفل
          Positioned(
            bottom: 40,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Previous
                if (currentPage != 0)
                  ElevatedButton(
                    onPressed: () {
                      controller.previousPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    },
                    child: const Text("Previous"),
                  )
                else
                  const SizedBox(),

                /// Next / Continue
                ElevatedButton(
                  onPressed: () {
                    if (currentPage != items.length - 1) {
                      controller.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    } else {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (_) => const SignIn()),
                      );
                    }
                  },
                  child: Text(
                    currentPage != items.length - 1 ? "Next" : "Continue",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
