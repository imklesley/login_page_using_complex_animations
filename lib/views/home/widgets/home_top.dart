import 'package:flutter/material.dart';

import 'category_tasks.dart';

class HomeTop extends StatelessWidget {
  final Animation<double> growContainerAnimation;

  const HomeTop({Key? key, required this.growContainerAnimation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;

    return Container(
      height: _size.height * 0.4,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/background.jpg',
              ),
              fit: BoxFit.cover)),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'Bem vindo, Klesley !',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w300),
            ),
            Container(
              width: growContainerAnimation.value * 125,
              height: growContainerAnimation.value * 125,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('assets/images/perfil.jpg'),
                    fit: BoxFit.cover),
              ),
              alignment: Alignment.topRight,
              child: Container(

                height: growContainerAnimation.value * 35,
                width: growContainerAnimation.value * 35,
                margin: const EdgeInsets.only(left: 80),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(80, 210, 194, 1)),
                alignment: Alignment.center,
                child: Text(
                  '2',
                  style: TextStyle(color: Colors.white,
                      fontSize: growContainerAnimation.value * 15,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            const CategoryTasks()
          ],
        ),
      ),
    );
  }
}
