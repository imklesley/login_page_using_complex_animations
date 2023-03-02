import 'package:flutter/material.dart';

class FadeContainer extends StatelessWidget {

 final Animation<Color?> fadeColorHeroAnimation;


  const FadeContainer({Key? key, required this.fadeColorHeroAnimation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
        tag: 'fade',
        child: IgnorePointer(
          child: Container(
            color: fadeColorHeroAnimation.value
          ),
        ));
  }
}
