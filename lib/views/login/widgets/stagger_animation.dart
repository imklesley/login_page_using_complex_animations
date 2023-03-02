import 'package:flutter/material.dart';

class StaggerAnimation extends StatelessWidget {
  final Size size;
  final AnimationController controller;

  final Animation<double> _buttonSqueeze;
  final Animation<double> _buttonZoomOutHeight;
  final Animation<double> _buttonZoomOutWidth;

  StaggerAnimation({Key? key, required this.controller, required this.size})
      : _buttonSqueeze = Tween<double>(begin: 320, end: 60).animate(
            CurvedAnimation(
                parent: controller, curve: const Interval(0, 0.15))),
        _buttonZoomOutHeight = Tween<double>(begin: 60, end: size.height)
            .animate(CurvedAnimation(
                parent: controller,
                curve: const Interval(0.5, 1, curve: Curves.easeInOutCubic))
              ..addStatusListener((status) {})),
        _buttonZoomOutWidth = Tween<double>(begin: 60, end: size.width).animate(
            CurvedAnimation(
                parent: controller,
                curve: const Interval(0.5, 1, curve: Curves.easeInOutCubic))
              ..addStatusListener((status) {})),
        super(key: key);

  Widget _buildAnimation(BuildContext context, Widget? child) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 70),
      child: InkWell(
          onTap: () {
            controller.forward();
          },
          child: Hero(
            tag: 'fade',
            child: _buttonZoomOutHeight.value <= 70
                ? Container(
                    width: _buttonSqueeze.value,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: const Color.fromRGBO(247, 64, 106, 1),
                    ),
                    alignment: Alignment.center,
                    child: _buildInsideButton(context))
                : Container(
                    width: _buttonZoomOutWidth.value,
                    height: _buttonZoomOutHeight.value,
                    decoration: BoxDecoration(
                      borderRadius:
                          _buttonZoomOutHeight.value <= size.height * 0.98
                              ? BorderRadius.circular(50)
                              : null,
                      color: const Color.fromRGBO(247, 64, 106, 1),
                    ),
                    alignment: Alignment.center,
                  ),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(animation: controller, builder: _buildAnimation);
  }

  Widget _buildInsideButton(BuildContext context) {
    if (_buttonSqueeze.value > 75) {
      return const Text(
        'Sign In',
        style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w300,
            letterSpacing: 0.3),
      );
    } else {
      return const CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
      );
    }
  }
}
