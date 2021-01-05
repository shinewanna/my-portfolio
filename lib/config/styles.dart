import 'package:flutter/material.dart';

import 'colors.dart';

mixin AppStyles {
  static final TextStyle title = TextStyle(
    color: AppColors.black.withOpacity(.8),
    fontSize: 35,
    fontWeight: FontWeight.w700,
  );

    static final TextStyle body = TextStyle(
    color: AppColors.black.withOpacity(.8),
    fontSize: 35,
    fontWeight: FontWeight.w700,
  );
}
