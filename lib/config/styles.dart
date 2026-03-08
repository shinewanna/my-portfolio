import 'package:flutter/material.dart';
import 'package:myporfolio/config/colors.dart';
import 'package:velocity_x/velocity_x.dart';

mixin AppStyle {
  static Widget title(String value) =>
      value.text.size(35).bold.color(AppColors.text).make();

  static Widget subtitle(String value) => value.text.xl2.make();

  static Widget desc(String value) =>
      value.text.xl.lineHeight(1.5).color(AppColors.text).make();

  static Widget sectionTitle(String value) =>
      value.text.size(40).extraBold.color(AppColors.text).make();

  static Widget caption(String value) =>
      value.text.sm.color(AppColors.text).make();
}
