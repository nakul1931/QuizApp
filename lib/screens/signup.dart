import 'package:QuizApp/screens/signIn.dart';
import 'package:QuizApp/widgets/validators.dart';
import 'package:QuizApp/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:QuizApp/auth/auth.dart';
import 'package:QuizApp/screens/home.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String name, email, password;
  final _formKey = GlobalKey<FormState>();

  final _auth = AuthUser();

  signUp() {
    print(email);
    print(password);
    if (_formKey.currentState.validate())
      _auth.signUp(email, password).then((value) {
        if (value != null) {
          print("SignUP worked");
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => Home(),
              ));
        }
      });
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
              SizedBox(
                height: 15.0,
              ),
              textField("Name", name, nameValidator(), false),
              textField("Email", email, emailValidator(), false),
              textField("Password", password, passwordValidator(), true),
              SizedBox(
                height: 20.0,
              ),
              submitButton("Sign Up", context, () => signUp()),
              SizedBox(
                height: 20.0,
              ),
              dontHaveAccount("Sign in", context, SignIn()),
              SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
