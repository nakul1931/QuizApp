import 'package:QuizApp/screens/addQuestion.dart';
import 'package:QuizApp/widgets/validators.dart';
import 'package:QuizApp/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CreateQuiz extends StatefulWidget {
  @override
  _CreateQuizState createState() => _CreateQuizState();
}

class _CreateQuizState extends State<CreateQuiz> {
  String imageUrl, quizTitle, quizDesc;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: apppBar(),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: <Widget>[
            textField("Quiz Image Url", imageUrl, nameValidator(), false),
            textField("Quiz Title", imageUrl, nameValidator(), false),
            textField("Quiz Description", imageUrl, nameValidator(), false),
            Spacer(),
            submitButton("Create Quiz", context, () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddQuestion(),
                  ));
            }),
            SizedBox(
              height: 20.0,
            )
          ],
        ),
      ),
    );
  }
}
