import 'package:flutter/material.dart';
import 'package:trampo/modules/password/password_controller.dart';
import 'package:trampo/shared/widgets/email_form_field.dart';

class PasswordPage extends StatefulWidget {
  @override
  _PasswordPageState createState() => _PasswordPageState();
}

class _PasswordPageState extends State<PasswordPage> {
  final _formKey = GlobalKey<FormState>();
  final _controller = PasswordController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                  'Por favor, informe o E-mail associado a sua conta, que enviaremos um link para o mesmo com as instruções para troca de sua senha.'),
              EmailFormField(onSaved: _controller.setEmail),
              RaisedButton(
                child: Text('Trocar senha'),
                onPressed: () async {
                  if (_formKey.currentState.validate()) {
                    _formKey.currentState.save();
                    _controller.reset();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
