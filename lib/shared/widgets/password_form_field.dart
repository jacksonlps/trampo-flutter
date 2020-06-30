import 'package:flutter/material.dart';

class PasswordFormField extends StatelessWidget {
  final Function(String) onSaved;

  const PasswordFormField({
    Key key,
    this.onSaved,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        obscureText: true,
        decoration: InputDecoration(
          labelText: 'Senha',
          filled: true,
          border: InputBorder.none,
        ),
        onSaved: onSaved,
      ),
    );
  }
}
