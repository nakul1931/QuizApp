import 'package:QuizApp/screens/signup.dart';
import 'package:QuizApp/widgets/validators.dart';
import 'package:flutter/material.dart';
import 'package:QuizApp/widgets/widgets.dart';
import 'package:QuizApp/auth/auth.dart';
import 'home.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();
  String email, password;

  final _auth = AuthUser();

  signIn() async {
    if (_formKey.currentState.validate()) {
      await _auth.signIn(email, password).then((value) {
        if (value != null) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => Home(),
            ),
          );
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: appBar(),
      body: Form(
        key: _formKey,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: <Widget>[
              Spacer(),
              textField("Email", email, emailValidator(), false),
              SizedBox(
                height: 15.0,
              ),
              textField("Password", password, passwordValidator(), true),
              SizedBox(
                height: 40.0,
              ),
              submitButton("Sign In", context, () => signIn()),
              SizedBox(
                height: 30.0,
              ),
              dontHaveAccount("Sign up", context, SignUp()),
              SizedBox(
                height: 30.0,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
