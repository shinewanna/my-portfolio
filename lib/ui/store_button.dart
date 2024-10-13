import 'package:flutter/material.dart';
import 'package:myporfolio/config/app_utils.dart';
import 'package:myporfolio/config/colors.dart';
import 'package:myporfolio/model/button.dart';
import 'package:myporfolio/model/project.dart';
import 'package:myporfolio/widget/nth.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:velocity_x/velocity_x.dart';

class StoreButton extends StatelessWidget {
  final Project project;
  const StoreButton({Key? key, required this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var btns = <Button>[];
    var deviceType = getDeviceType(MediaQuery.of(context).size);
    var horPad = 30.0;
    var verPad = 20.0;
    if (deviceType == DeviceScreenType.mobile) {
      horPad = 15.0;
      verPad = 15.0;
    }

    void _addUrl(Button button) {
      if (!button.url.isEmptyOrNull) btns.add(button);
    }

    _buildButton(Button button) => button.url.isEmptyOrNull
        ? Nth()
        : OutlinedButton(
            onPressed: () => AppUtils.launchLink(button.url!),
            style: ButtonStyle(
              side: WidgetStateProperty.resolveWith<BorderSide>((states) {
                return BorderSide(
                  color: button.color.withOpacity(.5),
                  width: 5,
                );
              }),
              padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
                EdgeInsets.symmetric(
                  horizontal: horPad,
                  vertical: verPad,
                ),
              ),
              shape: WidgetStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              textStyle: WidgetStateProperty.all<TextStyle>(
                TextStyle(color: Colors.black),
              ),
            ),
            child: Text(
              button.text,
              style: TextStyle(
                color: AppColors.text,
              ),
            ),
          );

    _addUrl(Button(
      url: project.playStore,
      text: 'Play Store',
      color: AppColors.secondary,
    ));
    _addUrl(Button(
      url: project.appStore,
      text: 'App Store',
      color: AppColors.primary,
    ));
    _addUrl(Button(
      url: project.url,
      text: 'Visit',
      color: AppColors.primary,
    ));

    return Row(
        mainAxisAlignment: deviceType == DeviceScreenType.desktop
            ? MainAxisAlignment.spaceBetween
            : btns.length > 1
                ? MainAxisAlignment.spaceBetween
                : MainAxisAlignment.center,
        children: btns.map((btn) => _buildButton(btn)).toList());
  }
}
