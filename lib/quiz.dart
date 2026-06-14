import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/Questions_Screen.dart';
import 'package:quiz_app/data/Question.dart';
import 'package:quiz_app/result_screen.dart';

const Gradent_Start = AlignmentGeometry.bottomCenter;
const Gradent_End = Alignment.centerLeft;
List<Color> input_colors = ([
  Colors.cyanAccent,
  Colors.cyan,
  Colors.indigoAccent,
]);

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _Quiz_State();
  }
}

class _Quiz_State extends State<Quiz> {
  List<String> selectAnswer = [];

  var Active_Screen = 'start-screen';

  void Switch_Screen() {
    setState(() {
      Active_Screen = 'Questions-Screen';
    });
  }

  void chooseAnswer(String answer) {
    selectAnswer.add(answer);
    if (selectAnswer.length == questions.length) {
      setState(() {
        Active_Screen = 'result-screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectAnswer = [];
      Active_Screen = 'start-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = Active_Screen == 'start-screen'
        ? start_screen(Switch_Screen)
        : Questions(onSelectAnswer: chooseAnswer);
    if (Active_Screen == 'result-screen') {
      screenWidget = ResultScreen(
        chosenAnswers: selectAnswer,
        onRestart: restartQuiz,
      );
    }
    return (MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: input_colors,
              begin: Gradent_Start,
              end: Gradent_End,
              transform: const GradientRotation(500),
            ),
          ),
          child: Center(child: screenWidget),
        ),
      ),
    ));
  }
}
