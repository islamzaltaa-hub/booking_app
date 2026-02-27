import 'package:booking_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class MainAppbar extends StatelessWidget {
  const MainAppbar({super.key, this.screenName, this.actions});

  final String? screenName;
  final Widget? actions;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back),
            ),
            Text(screenName??"" ,style: AppStyles.white16w400,),
          ],
        ),

        actions?? SizedBox(),
      ],
    );
  }
}
