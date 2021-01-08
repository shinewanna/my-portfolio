import 'package:flutter/material.dart';
import 'package:myporfolio/config/colors.dart';
import 'package:myporfolio/config/styles.dart';
import 'package:myporfolio/model/project.dart';
import 'package:myporfolio/widget/nth.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class StoreButton extends StatelessWidget {
  final Project project;
  const StoreButton({Key key, this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var deviceType = getDeviceType(MediaQuery.of(context).size);
    var horPad = 30.0;
    var verPad = 20.0;
    if (deviceType == DeviceScreenType.mobile) {
      horPad = 10.0;
      verPad = 15.0;
    }
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
                padding: EdgeInsets.symmetric(
                  horizontal: horPad,
                  vertical: verPad,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: deviceType == DeviceScreenType.mobile
                    ? AppStyle.desc('Play Store')
                    : AppStyle.subtitle('Play Store'),
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
                padding: EdgeInsets.symmetric(
                  horizontal: horPad,
                  vertical: verPad,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: deviceType == DeviceScreenType.mobile
                    ? AppStyle.desc('App Store')
                    : AppStyle.subtitle('App Store'),
              ),
      ],
    );
  }
}
