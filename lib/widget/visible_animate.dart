import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';

class VisibleAnimate extends StatelessWidget {
  final Widget child;
  final String id;

  const VisibleAnimate({Key key, this.child, this.id}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnimateIfVisible(
      key: Key(id),
      builder: (
        BuildContext context,
        Animation<double> animation,
      ) =>
          FadeTransition(
        opacity: Tween<double>(
          begin: 0,
          end: 1,
        ).animate(animation),
        child: child,
      ),
    );
  }
}
