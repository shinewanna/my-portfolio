import 'package:flutter/material.dart';
import 'package:myporfolio/config/colors.dart';
import 'package:velocity_x/velocity_x.dart';

mixin AppStyle {
  static Widget title(String value) => value.text
      .size(35)
      .fontWeight(FontWeight.w700)
      .color(AppColors.text)
      .make();

  static Widget subtitle(String value) => value.text.xl.make();

  static Widget desc(String value) =>
      value.text.lineHeight(1.5).color(AppColors.text).make();
}
