import 'package:flutter/material.dart';
import 'package:trampo/modules/signin/signin_controller.dart';
import 'package:trampo/shared/widgets/email_form_field.dart';
import 'package:trampo/shared/widgets/password_form_field.dart';

class SigninPage extends StatefulWidget {
  @override
  _SigninPageState createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  final _formKey = GlobalKey<FormState>();
  final _controller = SigninController();

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
              EmailFormField(onSaved: _controller.setEmail),
              PasswordFormField(onSaved: _controller.setPassword),
              RaisedButton(
                child: Text('Login'),
                onPressed: () async {
                  if (_formKey.currentState.validate()) {
                    _formKey.currentState.save();
                    _controller.login();
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
