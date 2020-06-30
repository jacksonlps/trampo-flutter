import 'package:flutter/material.dart';
import 'package:trampo/modules/signin/signin_repository.dart';

class SigninPage extends StatefulWidget {
  @override
  _SigninPageState createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  final _formKey = GlobalKey<FormState>();
  String email, password;
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
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  filled: true,
                  border: InputBorder.none,
                ),
                onSaved: (text) => email = text,
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Senha',
                  filled: true,
                  border: InputBorder.none,
                ),
                onSaved: (text) => password = text,
              ),
              SizedBox(height: 20),
              RaisedButton(
                child: Text('Login'),
                onPressed: () async {
                  if (_formKey.currentState.validate()) {
                    _formKey.currentState.save();
                    print('login..');
                    final repository = SigninRepository();
                    final user = await repository.login(
                        email: email, password: password);
                    print(user.uid);
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
