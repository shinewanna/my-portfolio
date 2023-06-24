import 'package:flutter/material.dart';
import 'package:myporfolio/config/styles.dart';
import 'package:myporfolio/data/my_info.dart';
import 'package:velocity_x/velocity_x.dart';

class ExpView extends StatelessWidget {
  const ExpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: myInfo.exps
          .map((e) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppStyle.subtitle(e.role),
                  3.heightBox,
                  e.place.selectableText.tight.make(),
                  AppStyle.desc(e.fromTo),
                  20.heightBox
                ],
              ))
          .toList(),
    );
  }
}
