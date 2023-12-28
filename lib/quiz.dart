import 'package:flutter/material.dart';
import 'package:quizapp/main_page.dart';
import 'package:quizapp/questions_screen.dart';
import 'package:quizapp/data/questions.dart';
import 'package:quizapp/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  Widget? activeScreen;
  List l = [1, 2, if (3 < 0) 3, if (3 == 3) 4, if (true) 5];

  @override
  void initState() {
    super.initState();
    activeScreen = MainPage(switchScreen);
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen =
            ResultsScreen(chosenAnswers: selectedAnswers, restart: restart);
        selectedAnswers = [];
      });
    }
  }

  void switchScreen() {
    setState(() {
      activeScreen = QuestionsScreen(chooseAnswer);
    });
  }

  void restart() {
    setState(() {
      activeScreen = MainPage(switchScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: const Color.fromARGB(255, 90, 16, 103),
          child: activeScreen,
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
