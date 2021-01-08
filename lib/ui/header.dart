import 'package:flutter/material.dart';
import 'package:myporfolio/config/colors.dart';
import 'package:velocity_x/velocity_x.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: Row(
          children: [
            "Portfol".text.color(AppColors.text).bold.xl3.make(),
            "i".text.bold.color(AppColors.primary).xl3.make(),
            "o".text.bold.color(AppColors.secondary).xl3.make()
          ],
        ),
      ),
    );
  }
}
