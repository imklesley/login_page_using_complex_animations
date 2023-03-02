import 'package:animacoes_complexas/views/login/widgets/input_field.dart';
import 'package:animacoes_complexas/views/login/widgets/sign_up_button.dart';
import 'package:flutter/material.dart';

class FormContainer extends StatelessWidget {
  FormContainer({Key? key}) : super(key: key);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameControler = TextEditingController();
  final TextEditingController _passwordControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            InputField(
              controller: _usernameControler,
              hint: 'Username',
              obscure: false,
              icon: Icons.person_outline,
            ),
            InputField(
              controller: _passwordControler,
              hint: 'Password',
              obscure: true,
              icon: Icons.lock_outline,
            ),
            const SignUpButton()
          ],
        ),
      ),
    );
  }
}
