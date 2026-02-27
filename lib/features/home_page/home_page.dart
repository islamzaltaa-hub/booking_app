import 'package:booking_app/core/utils/colors.dart';
import 'package:booking_app/core/utils/styles.dart';
import 'package:booking_app/features/home_page/widgets/categories_list.dart';
import 'package:booking_app/features/home_page/widgets/maindrawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static const routeName = ' HomePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        foregroundColor: AppColors.primaryWhite,
      ),
      drawer: MyDrawer(),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 179,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(33),
                    bottomRight: Radius.circular(33),
                  ),
                ),
              ),
              SizedBox(height: 39),
              Row(
                children: [
                  Text("Upcoming EVENTS", style: AppStyles.black16bold),
                ],
              ),
            ],
          ),

          CategoriesList(),
        ],
      ),
    );
  }
}
