import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;
import 'views/login/login_view.dart';

void main() {
  //Realiza a dilatação do tempo(em x vezes mais lento) do tempo do app
  timeDilation = 1;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Animações Complexas',
      debugShowCheckedModeBanner: false,
      // home: LoginView(),
      home: LoginView(),
    );
  }
}
