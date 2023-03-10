import 'package:flutter/material.dart';

import 'list_data.dart';

class AnimatedListView extends StatelessWidget {

  final Animation<EdgeInsets> listSlidePosition;


  const AnimatedListView({Key? key, required this.listSlidePosition}) : super(key: key);







  @override
  Widget build(BuildContext context) {

    List<ListData> list = [
      ListData(
        title: 'Estudar Django',
        subtitle: 'Dennys Ivy',
        image: const AssetImage('assets/images/perfil.jpg'),
        margin: listSlidePosition.value * 9,
      ), ListData(
        title: 'Front-end usando React',
        subtitle: 'Workana',
        image: const AssetImage('assets/images/perfil.jpg'),
          margin: null
      ), ListData(
        title: 'Estudar Flutter',
        subtitle: 'Udemy',
        image: const AssetImage('assets/images/perfil.jpg'),
          margin: null
      ),ListData(
        title: 'Proest Bot',
        subtitle: 'UFT',
        image: const AssetImage('assets/images/perfil.jpg'),
          margin: null
      ),ListData(
        title: 'Front-end usando React',
        subtitle: 'Workana',
        image: const AssetImage('assets/images/perfil.jpg'),
          margin: null
      ), ListData(
        title: 'Estudar Flutter',
        subtitle: 'Udemy',
        image: const AssetImage('assets/images/perfil.jpg'),
          margin: null
      ),ListData(
        title: 'Proest Bot',
        subtitle: 'UFT',
        image: const AssetImage('assets/images/perfil.jpg'),
          margin: null
      ),ListData(
        title: 'Front-end usando React',
        subtitle: 'Workana',
        image: const AssetImage('assets/images/perfil.jpg'),
          margin: null
      ), ListData(
        title: 'Estudar Flutter',
        subtitle: 'Udemy',
        image: const AssetImage('assets/images/perfil.jpg'),
        margin: null
      ),ListData(
        title: 'Proest Bot',
        subtitle: 'UFT',
        image: const AssetImage('assets/images/perfil.jpg'),
        margin: listSlidePosition.value * 0,
      ),
    ];


    return Stack(
      //?? necess??rio isso aqui, pois primeiro coloca-se todas as tiles sobrepostas
      // e ent??o a anima????o s?? vai d?? um padding para que as tile escondidas sejam
      //exibidas ao usu??rio
      alignment: Alignment.bottomCenter,
      children: list.map<ListData>((item){
        item.margin = listSlidePosition.value * list.indexOf(item).toDouble();
        return item;
      }).toList()
    );
  }
}
