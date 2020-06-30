import 'package:flutter/material.dart';
import 'package:trampo/modules/signup/signup_controller.dart';
import 'package:trampo/shared/widgets/email_form_field.dart';
import 'package:trampo/shared/widgets/password_form_field.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formKey = GlobalKey<FormState>();
  final _controller = SignupController();

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
              SizedBox(height: 20),
              RaisedButton(
                child: Text('Registrar'),
                onPressed: () async {
                  if (_formKey.currentState.validate()) {
                    _formKey.currentState.save();
                    _controller.register();
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
