import 'package:animacoes_complexas/intro_to_animation/grow_size_opacity.dart';
import 'package:flutter/material.dart';

import 'grow_trasition.dart';

class IntroAnimations extends StatefulWidget {
  const IntroAnimations({Key? key}) : super(key: key);

  @override
  State<IntroAnimations> createState() => _IntroAnimationsState();
}

class _IntroAnimationsState extends State<IntroAnimations>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));

    _animation = CurvedAnimation(
        parent: _controller, curve: Curves.elasticInOut);

    //É necessário iniciar a animação
    _controller.forward();

    _animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        _controller.forward();
      }
    });

    _animation.addListener(() {
      //mostra o valor a cada alteração na interpolação
      print(_animation.value);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GrowSizeOpacity(child: const FlutterLogo(), animation: _animation)
      ],
    );
  }
}

//Usei para realizar a animação de um widget, é uma das formas mais simples pra gerar uma animação no flutter
// class AnimatedLogo extends AnimatedWidget {
//   const AnimatedLogo(Animation<double> animation, {Key? key})
//       : super(key: key, listenable: animation);
//
//   Animation<double> get animation => listenable as Animation<double>;
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: SizedBox(
//         height: animation.value,
//         width: animation.value,
//         child: const FlutterLogo(),
//       ),
//     );
//   }
// }
