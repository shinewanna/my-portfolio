import 'package:flutter/material.dart';
import 'package:myporfolio/config/colors.dart';
import 'package:myporfolio/config/styles.dart';
import 'package:myporfolio/data/my_info.dart';
import 'package:velocity_x/velocity_x.dart';

class EducationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: AppColors.primary.withOpacity(0.2),
        ),
        color: AppColors.cardBackground,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.primary.withOpacity(0.1),
            ),
            child: Icon(
              Icons.school_rounded,
              color: AppColors.primary,
              size: 28,
            ),
          ),
          const SizedBox(width: 16),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppStyle.subtitle('Education'),
                6.heightBox,
                Text(
                  myInfo.acadamicDetail.name,
                  style: TextStyle(
                    color: AppColors.text,
                    fontSize: 14,
                  ),
                ),
                4.heightBox,
                AppStyle.desc(myInfo.acadamicDetail.degree),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
