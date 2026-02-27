import 'package:booking_app/features/onboarding/widgets/page_view_body.dart';
import 'package:flutter/material.dart';

class PageViewItems extends StatelessWidget {
  const PageViewItems({
    super.key,
    required this.controller,
    required this.items,
    required this.currentPage,
    required this.onPageChanged,
  });

  final PageController controller;
  final List items;
  final int currentPage;
  final Function(int) onPageChanged;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller,
      itemCount: items.length,
      onPageChanged: onPageChanged,
      itemBuilder: (context, index) => PageViewBody(
        image: items[index]['image'],
        title: items[index]['title'],
        content: items[index]['content'],
        currentPage: currentPage,
        index: index,
        length: items.length,
      ),
    );
  }
}
