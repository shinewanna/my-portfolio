import 'package:flutter/material.dart';
import 'package:myporfolio/config/colors.dart';

class AboutMeTextView extends StatelessWidget {
  const AboutMeTextView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: "About ",
          style: TextStyle(color: AppColors.text, fontSize: 50),
          children: [
            TextSpan(
              text: "M",
              style: TextStyle(color: AppColors.primary, fontSize: 50),
            ),
            TextSpan(
              text: "e",
              style: TextStyle(color: AppColors.secondary, fontSize: 50),
            ),
          ]),
    );
  }
}
