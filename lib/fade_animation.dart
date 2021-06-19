import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class FadeAnimation extends StatelessWidget {
  final double delay;
  final Widget child;

  FadeAnimation(this.delay, this.child);

  @override
  Widget build(BuildContext context) {
    final tween = MultiTrackTween([
      // ignore: deprecated_member_use
      Track('opacity').add(
        Duration(milliseconds: 500),
        Tween(begin: 0.0, end: 1.0),
      ),
      // ignore: deprecated_member_use
      Track('translatey').add(
        Duration(milliseconds: 500),
        Tween(begin: 120.0, end: 0.0),
      ),
    ]);
    // ignore: deprecated_member_use
    return ControlledAnimation(
      delay: Duration(milliseconds: (500 * delay).round()),
      duration: tween.duration,
      tween: tween,
      child: child,
      builderWithChild: (context, child, animation) {
        return Opacity(
          opacity: animation['opacity'],
          child: Transform.translate(
            offset: Offset(0, animation['translatey']),
            child: child,
          ),
        );
      },
    );
  }
}
