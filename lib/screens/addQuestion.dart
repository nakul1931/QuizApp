import 'package:QuizApp/widgets/validators.dart';
import 'package:QuizApp/widgets/widgets.dart';
import 'package:flutter/material.dart';

class AddQuestion extends StatefulWidget {
  @override
  _AddQuestionState createState() => _AddQuestionState();
}

class _AddQuestionState extends State<AddQuestion> {
  String _question, optionCorrect, option1, option2, option3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: apppBar(),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: <Widget>[
            textField("Question", _question, nameValidator(), false),
            textField("Option (Correct answer)", optionCorrect, nameValidator(),
                false),
            textField("Option 1", option1, nameValidator(), false),
            textField("Option 2", option2, nameValidator(), false),
            textField("Option 3", option3, nameValidator(), false),
            Spacer(),
            Row(
              children: <Widget>[
                submitButton("Submit", context, () {
                  print("submit");
                }, isQuestion: true),
                SizedBox(
                  width: 20.0,
                ),
                submitButton(
                  "Add Question",
                  context,
                  () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AddQuestion(),
                        ));
                  },
                  isQuestion: true,
                )
              ],
            ),
            SizedBox(
              height: 20.0,
            )
          ],
        ),
      ),
    );
  }
}
