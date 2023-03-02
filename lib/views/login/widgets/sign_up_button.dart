import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 160),
      child: TextButton(
        onPressed: () {},
        child: const Text(
          'Não possui uma conta? Cadastra-se!',
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: Colors.white, fontSize: 12,letterSpacing: 1.5,fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
