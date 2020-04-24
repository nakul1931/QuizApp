import 'package:flutter/material.dart';

Widget appBar() {
  return AppBar(
    title: Text(
      "QuizApp",
      style: TextStyle(color: Colors.blue),
    ),
    backgroundColor: Colors.transparent,
    elevation: 0.0,
  );
}

Widget submitButton(String title, BuildContext context, Function _onTap,
    {bool isQuestion}) {
  return ButtonTheme(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
    minWidth: isQuestion == null
        ? MediaQuery.of(context).size.width - 40.0
        : (MediaQuery.of(context).size.width - 60.0) / 2,
    height: 50.0,
    child: RaisedButton(
      onPressed: _onTap,
      child: Text(
        "$title",
        style: TextStyle(color: Colors.white, fontSize: 17.5),
      ),
    ),
  );
}

Widget textField(String title, String toAssign, Function(String) fieldValidator,
    bool isPassword) {
  return TextFormField(
    decoration: InputDecoration(hintText: "$title"),
    onChanged: (value) {
      toAssign = value;
      print(toAssign);
    },
    validator: fieldValidator,
    obscureText: isPassword,
  );
}

Widget dontHaveAccount(String title, BuildContext context, Widget moveTo) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text(
        "Have an account? ",
        style: TextStyle(fontSize: 15.0),
      ),
      InkWell(
        onTap: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => moveTo));
        },
        child: Text(
          title,
          style: TextStyle(
            fontSize: 15.0,
            decoration: TextDecoration.underline,
          ),
        ),
      )
    ],
  );
}

Widget apppBar() {
  return AppBar(
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
    title: Text(
      "QuizApp",
      style: TextStyle(color: Colors.blue),
    ),
    backgroundColor: Colors.transparent,
    elevation: 0.0,
  );
}
