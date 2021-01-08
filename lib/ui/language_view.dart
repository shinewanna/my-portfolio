import 'package:flutter/material.dart';
import 'package:myporfolio/config/colors.dart';
import 'package:myporfolio/config/styles.dart';
import 'package:myporfolio/data/my_info.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:velocity_x/velocity_x.dart';

class LanguageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppStyle.subtitle("Language"),
          6.heightBox,
          ...myInfo.langs
              .map((e) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          e.name.selectableText.make(),
                          "Proficient".selectableText.make(),
                        ],
                      ),
                      LinearPercentIndicator(
                        width: 200.0,
                        lineHeight: 14.0,
                        percent: e.proficiency,
                        backgroundColor: Colors.grey,
                        progressColor: AppColors.primary,
                        animation: true,
                        animationDuration: 2500,
                      ),
                      10.heightBox,
                    ],
                  ))
              .toList(),
        ],
      ),
    );
  }
}
