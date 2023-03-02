import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  InputField(
      {Key? key,
      required this.hint,
      required this.obscure,
      required this.icon,
      required this.controller})
      : super(key: key);

  final TextEditingController controller;
  final String hint;
  final bool obscure;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(width: 0.5, color: Colors.white24)),
        ),
        child: TextFormField(
          cursorColor: Colors.white24,
          controller: controller,
          obscureText: obscure,
          style: const TextStyle(
            color: Colors.white,
          ),
          decoration: InputDecoration(
              icon: Icon(
                icon,
                color: Colors.white,
              ),
              border: InputBorder.none,
              hintText: hint,
              hintStyle: const TextStyle(color: Colors.white, fontSize: 15),contentPadding: EdgeInsets.fromLTRB(5, 30, 30, 30)),
        ));
  }
}
