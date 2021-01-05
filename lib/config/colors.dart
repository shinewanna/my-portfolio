import 'package:flutter/material.dart';
import 'package:myporfolio/service/cache_service.dart';
import 'package:velocity_x/velocity_x.dart';

mixin AppColors {
  static final yellow = Colors.yellow[800];

  static final black = Colors.black87;

  static final greyLight = Colors.grey[100];  

  static final primary = Vx.purple500;

  static final secondary = Vx.pink300;

  static get text =>
      CacheService.settings.darkMode.getValue() ? Colors.white70 : Vx.gray700;
}
