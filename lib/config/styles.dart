import 'package:flutter/material.dart';
import 'package:myporfolio/config/colors.dart';
import 'package:velocity_x/velocity_x.dart';

mixin AppStyle {
  static Widget title(String value) =>
      value.selectableText.size(35).bold.color(AppColors.text).make();

  static Widget subtitle(String value, {bool isSelectableText = true}) =>
      isSelectableText ? value.selectableText.xl.make() : value.text.xl.make();

  static Widget desc(String value, {bool isSelectableText = true}) =>
      isSelectableText
          ? value.selectableText.lineHeight(1.5).color(AppColors.text).make()
          : value.text.lineHeight(1.5).color(AppColors.text).make();
}
