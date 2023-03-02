import 'package:flutter/material.dart';

import 'animated_list_view.dart';
import 'fade_container.dart';
import 'home_top.dart';

class HomeStaggerAnimation extends StatelessWidget {
  final AnimationController controller;

  final Animation<double> _growContainer;
  final Animation<EdgeInsets> _listSlidePosition;
  final Animation<Color?> _fadeColorHeroAnimation;

  HomeStaggerAnimation({Key? key, required this.controller})
      : _growContainer =
            CurvedAnimation(parent: controller, curve: Curves.ease),
        _listSlidePosition = EdgeInsetsTween(
                begin: const EdgeInsets.only(bottom: 0),
                end: const EdgeInsets.only(bottom: 80))
            .animate(CurvedAnimation(
                parent: controller,
                curve: const Interval(0.325, 0.8, curve: Curves.ease))),

        _fadeColorHeroAnimation = ColorTween(
                begin: const Color.fromRGBO(247, 64, 106, 1), end: Colors.transparent)
            .animate(
                CurvedAnimation(parent: controller, curve: Curves.decelerate)),

        super(key: key);

  Widget _buildAnimation(BuildContext context, Widget? child) {
    return Stack(
      children: [
        ListView(
          padding: EdgeInsets.zero,
          children: [
            HomeTop(growContainerAnimation: _growContainer),
            AnimatedListView(listSlidePosition: _listSlidePosition)
          ],
        ),
        FadeContainer(
          fadeColorHeroAnimation: _fadeColorHeroAnimation,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation: controller,
        builder: _buildAnimation,
      ),
    );
  }
}
