class Question {
  String questionText;
  String option1;
  String option2;
  String option3;
  String option4;
  int answer;

  Question(this.questionText, this.option1, this.option2, this.option3, 
    this.option4, this.answer);

  static List<Question> getQuestionList() {
    List<Question> questions = [];

    questions.add(Question(
      'O que é flutter?', 
      'É um sistema operacional', 
      'É um framework criado pelo Google', 
      'É uma linguagem de programação', 
      'É um serviço do Google', 
      2
    ));

    questions.add(Question(
      'Qual a linguagem utilizada pelo Flutter?', 
      'Javascript', 
      'Java', 
      'C++', 
      'Dart', 
      4
    ));
    
    return questions;
  }
}