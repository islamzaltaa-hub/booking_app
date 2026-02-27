import 'package:booking_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class PageViewBody extends StatelessWidget {
  const PageViewBody({
    super.key,
    required this.image,
    required this.title,
    required this.content,
    required this.currentPage,
    required this.index,
    required this.length,
  });

  final String image;
  final String title;
  final String content;
  final int currentPage;
  final int index;
  final int length;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 5,
          child: Image.asset(image, width: double.infinity, fit: BoxFit.cover),
        ),
        Expanded(
          flex: 4,
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff4E6AF3), Color(0xff2D49D6)],
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: AppStyles.white22w400,
                ),
                const SizedBox(height: 16),
                Text(
                  content,
                  textAlign: TextAlign.center,
                  style: AppStyles.white16w400,
                ),
                const SizedBox(height: 30),

                /// 🔵 Dynamic Dots
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    length,
                    (dotIndex) => AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      width: currentPage == dotIndex ? 14 : 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: currentPage == dotIndex
                            ? Colors.white
                            : Colors.white54,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
