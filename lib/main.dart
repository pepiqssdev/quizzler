import 'package:flutter/material.dart';
import 'package:quizzler/quizBrain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: QuizPage(),
        ),
      ),
    ),
  ));
}

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  // List<Icon> scoreKepper = [];
  // QuizBrain quizBrain = QuizBrain();
  // void CorrectAnswer(bool userPinkChecker) {
  //   bool Answer = quizBrain.getCorrectAnswer();
  //
  //   setState(() {
  //     if (quizBrain.isFinished() == true) {
  //
  //       Alert(
  //               context: context,
  //               title: 'Finished',
  //               desc: 'you are in the end of the quiz')
  //           .show();
  //       quizBrain.reset();
  //       scoreKepper = [];
  //     } else {
  //       if (userPinkChecker == Answer) {
  //         scoreKepper.add(Icon(
  //           Icons.check,
  //           color: Colors.green,
  //         ));
  //       } else {
  //         scoreKepper.add(Icon(
  //           Icons.close,
  //           color: Colors.red,
  //         ));
  //
  //       }
  //       quizBrain.nextQuestion();
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Center(
            child: Text(
              quizBrain.getQuestionText(),
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
              ),
            ),
          ),
        )),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(70.0),
            child: TextButton(
              onPressed: () {
                CorrectAnswer(true);
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              child: Text(
                'True',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(70.0),
            child: TextButton(
              onPressed: () {
                CorrectAnswer(false);
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Row(
          children: scoreKepper,
        ),
      ],
    );
  }
}
