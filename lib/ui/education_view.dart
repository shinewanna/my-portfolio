import 'package:flutter/material.dart';
import 'package:myporfolio/config/styles.dart';
import 'package:myporfolio/data/my_info.dart';
import 'package:velocity_x/velocity_x.dart';

class EducationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppStyle.subtitle("Education"),
        10.heightBox,
        myInfo.acadamicDetail.name.text.tight.make(),
        AppStyle.desc(myInfo.acadamicDetail.degree),
        20.heightBox,
      ],
    );
  }
}
