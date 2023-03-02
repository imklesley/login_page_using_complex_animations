import 'package:flutter/material.dart';

class GrowSizeOpacity extends StatelessWidget {
  final Widget child;
  final Animation<double> animation;

  final Tween<double> size = Tween<double>(begin: 0,end: 300);
  final Tween<double> opacity = Tween<double>(begin: 0.1,end: 1);

  GrowSizeOpacity({Key? key, required this.child, required this.animation})
      : super(key: key);



  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        child: child,
        animation: animation,
        builder: (context, child) {
          return Opacity(
            //Clap "explica" pro flutter até aonde ele pode ir com a animação.
            // No caso da opacidade ele não pode nem ser menor que 0 nem maior
            // que 1, porém uma curva do tipo Elastic pode fazer com que passe,
            // logo é necessário usar o .clap e delimitar os limites da
            // interpolação
            opacity: opacity.evaluate(animation).clamp(0, 1),
            child: SizedBox(
              height: size.evaluate(animation).clamp(0, double.infinity),
              width: size.evaluate(animation).clamp(0, double.infinity),
              child: child,
            ),
          );
        });
  }
}
