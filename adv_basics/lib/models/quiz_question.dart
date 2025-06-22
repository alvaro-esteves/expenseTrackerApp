class QuizQuestion {
  const QuizQuestion(this.text, this.answers);
  
  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers(){
    final shuffledList = List.of(answers); //duplicating the list of answers 
    shuffledList.shuffle();   //making the order of the answer list random 
    return shuffledList;
  }
}