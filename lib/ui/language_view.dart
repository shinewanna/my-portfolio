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
      width: 250,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.primary.withOpacity(0.2)),
        color: AppColors.cardBackground,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppStyle.subtitle('Language'),
          12.heightBox,
          ...myInfo.langs
              .map((e) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            e.name,
                            style: TextStyle(
                              color: AppColors.text,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            '${(e.proficiency * 100).toInt()}%',
                            style: TextStyle(
                              color: AppColors.primary,
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      6.heightBox,
                      LinearPercentIndicator(
                        width: 208.0,
                        lineHeight: 8.0,
                        percent: e.proficiency,
                        backgroundColor: AppColors.primary.withOpacity(0.1),
                        linearGradient: AppColors.primaryGradient,
                        animation: true,
                        animationDuration: 1000,
                        barRadius: const Radius.circular(4.0),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 2.0),
                      ),
                      12.heightBox,
                    ],
                  ))
              .toList(),
        ],
      ),
    );
  }
}
