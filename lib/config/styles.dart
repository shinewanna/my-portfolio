import 'package:flutter/material.dart';
import 'package:myporfolio/config/colors.dart';

mixin AppStyles {
  static get title => TextStyle(
        fontSize: 35,
        fontWeight: FontWeight.w700,
        color: AppColors.text,
      );

  static final TextStyle body = TextStyle(
    fontSize: 35,
    fontWeight: FontWeight.w700,
  );
}
