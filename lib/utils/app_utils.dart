import 'package:flutter/cupertino.dart';
import 'package:myporfolio/config/colors.dart';
import 'package:velocity_x/velocity_x.dart';

class AppUtil {
  AppUtil._();
  static Widget withSubtitleStyle(String value) => value.text.xl.make();

  static Widget withDescStyle(String value) =>
      value.text.lineHeight(1.5).color(AppColors.text).make();
}
