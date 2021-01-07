import 'package:flutter/material.dart';
import 'package:myporfolio/config/colors.dart';
import 'package:myporfolio/model/project.dart';
import 'package:myporfolio/utils/app_utils.dart';
import 'package:myporfolio/widget/nth.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class StoreButton extends StatelessWidget {
  final Project project;
  const StoreButton({Key key, this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        project.playStore.isEmptyOrNull
            ? Nth()
            : OutlineButton(
                onPressed: () => launch(project.playStore),
                color: AppColors.secondary,
                borderSide: BorderSide(
                  color: AppColors.secondary.withOpacity(.5),
                  width: 5,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 20,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: AppUtil.withSubtitleStyle('Play Store'),
              ).box.make(),
        project.appStore.isEmptyOrNull
            ? Nth()
            : OutlineButton(
                onPressed: () {
                  launch(project.appStore);
                },
                color: AppColors.primary,
                borderSide: BorderSide(
                  color: AppColors.primary.withOpacity(.5),
                  width: 5,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 20,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: AppUtil.withSubtitleStyle('App Store'),
              ),
      ],
    );
  }
}
