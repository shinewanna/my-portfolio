import 'package:flutter/material.dart';
import 'package:myporfolio/config/colors.dart';

class AppIcon extends StatelessWidget {
  final String path;
  final double size;
  final Color color;
  final Color? background;

  const AppIcon(this.path,
      {Key? key, this.size = 25, this.color = Colors.white, this.background})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: background,
      child:
          Image.network(path, color: AppColors.text, height: size, width: size),
    );
  }
}
