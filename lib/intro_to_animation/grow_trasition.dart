//Uma forma clean de reaproveitar código, no caso do AnimatedWidget eu teria que
//criar um classe para cada transição em widget desejada, usando o
// animatedbuilder é possível criar uma classe para reaproveitar animações
import 'package:flutter/material.dart';

class GrowTransition extends StatelessWidget {
  final Widget child;
  final Animation<double> animation;

  const GrowTransition({Key? key, required this.child, required this.animation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        child: child,
        animation: animation,
        builder: (context, child) {
          return SizedBox(
            height: animation.value,
            width: animation.value,
            child: child,
          );
        },
      ),
    );
  }
}