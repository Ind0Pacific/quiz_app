import 'package:flutter/material.dart';

class start_screen extends StatelessWidget {
  const start_screen(this.Start_Quiz, {super.key});

  final void Function() Start_Quiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(160, 255, 255, 255),
          ),
          SizedBox(height: 40),
          Center(
            child: Text(
              "Questions about Flutter",
              style: TextStyle(color: Colors.greenAccent, fontSize: 25),
            ),
          ),
          SizedBox(height: 40),
          OutlinedButton.icon(
            onPressed: Start_Quiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.amberAccent,
            ),
            icon: const Icon(Icons.arrow_circle_right_sharp),
            label: const Text("START"),
          ),
        ],
      ),
    );
  }
}
