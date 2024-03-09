import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz,{super.key});
  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Opacity(
            opacity:0.5,
            child: Image.asset(
             'assets/images/quiz-logo.png' 
            ),
          ),
        const SizedBox(height: 30,),
        Text("learn flutter",
        style: GoogleFonts.lato(
          color: const Color.fromARGB(255, 112, 77, 110),
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        ),
        const SizedBox(height: 24),
        OutlinedButton.icon(
          onPressed: startQuiz, 
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white
          ),
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text('start quiz')
        )
        ],
    ));
  }
}
