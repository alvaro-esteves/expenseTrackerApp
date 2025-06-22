import 'package:adv_basics/data/questions.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/answer_button.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectAnswer}); //function passed as a value

  final void Function(String answer) onSelectAnswer; //accepting the chooseAnswer function

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswers) {
    widget.onSelectAnswer(selectedAnswers); //it needs to be part of the second class too
    //currentQuestionIndex = currentQuestionIndex + 1; 3 WAYS OF INCREMENTING
    //currentQuestionIndex += 1; this can increment by any other value
    setState(() {
      currentQuestionIndex++; // this only increments by one, the ++ can be replaced by --
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity, //takes all te available width
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.dosis(
                color: const Color.fromARGB(255, 0, 104, 99),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswers().map(
              (answer) {
                return AnswerButton(
                  answerText: answer,
                  onTap: () {
                    answerQuestion(answer);
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
