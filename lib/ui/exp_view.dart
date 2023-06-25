import 'package:flutter/material.dart';
import 'package:myporfolio/config/colors.dart';
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
                  AppStyle.subtitle(e.role + ' at ${e.place}'),
                  3.heightBox,
                  e.fromTo.text.color(AppColors.text).make(),
                  7.heightBox,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: e.bullets
                        .map(
                          (e) => Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: AppStyle.desc('• $e'),
                          ),
                        )
                        .toList(),
                  ),
                  20.heightBox,
                ],
              ))
          .toList(),
    );
  }
}
