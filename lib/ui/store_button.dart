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

    _buildButton(String url, String text, Color color) => url.isEmptyOrNull
        ? Nth()
        : OutlineButton(
            onPressed: () => launch(url),
            color: color,
            borderSide: BorderSide(
              color: color.withOpacity(.5),
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
                ? AppStyle.desc(text, isSelectableText: false)
                : AppStyle.subtitle(text, isSelectableText: false),
          );
    return project.url.isEmptyOrNull
        ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildButton(
                  project.playStore, 'Play Store', AppColors.secondary),
              _buildButton(project.appStore, 'App Store', AppColors.primary),
            ],
          )
        : _buildButton(project.url, 'Visit', AppColors.secondary);
  }
}
