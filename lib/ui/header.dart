import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: Row(
          children: [
            "Porfol".text.gray700.bold.xl3.make(),
            "i".text.bold.purple500.xl3.make(),
            "o".text.bold.pink300.xl3.make()
          ],
        ),
      ),
    );
  }
}
