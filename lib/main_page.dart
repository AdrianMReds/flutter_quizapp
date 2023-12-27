import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatelessWidget {
  const MainPage(this.startQuiz, {super.key});

  final void Function() startQuiz;

  //Made by me
  // @override
  // Widget build(BuildContext context) {
  //   return Container(
  //     decoration: BoxDecoration(color: Colors.purple),
  //     child: Column(
  //       children: [
  //         Image.asset('assets/img/quiz-logo.png'),
  //         Text('Learn flutter the fun way'),
  //         ElevatedButton(
  //           child: Text('Start quiz'),
  //           onPressed: () {},
  //         )
  //       ],
  //     ),
  //   );
  // }

  //Made with tutorial
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          // Opacity(
          //   opacity: 0.5,
          //   child: Image.asset(
          //     'assets/img/quiz-logo.png',
          //     width: 300,
          //   ),
          // ),
          Image.asset(
            'assets/img/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(130, 255, 255, 255),
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            'Learn flutter the fun way',
            style: GoogleFonts.lato(color: Colors.white, fontSize: 24),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            icon: const Icon(Icons.skip_next),
            label: const Text('Start quiz'),
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
