import 'package:quis_app/question.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Question> _questionsBank = [
    Question(
        questionText: 'You can lead a cow down stairs but not up stairs.',
        questionAnswer: false),
    Question(
        questionText:
            'Approximately one quarter of human bones are in the feet.',
        questionAnswer: true),
    Question(questionText: 'A slug\'s blood is green.', questionAnswer: true),
    Question(
        questionText: 'Some cats are actually allergic to humans',
        questionAnswer: true),
    Question(
        questionText: 'You can lead a cow down stairs but not up stairs.',
        questionAnswer: false),
    Question(
        questionText:
            'Approximately one quarter of human bones are in the feet.',
        questionAnswer: true),
    Question(questionText: 'A slug\'s blood is green.', questionAnswer: true),
    Question(
        questionText: 'Buzz Aldrin\'s mother\'s maiden name was \"Moon\".',
        questionAnswer: true),
    Question(
        questionText: 'It is illegal to pee in the Ocean in Portugal.',
        questionAnswer: true),
    Question(
        questionText:
            'No piece of square dry paper can be folded in half more than 7 times.',
        questionAnswer: false),
  ];
  void nextQuestion(){
    if(_questionNumber < _questionsBank.length-1){
      _questionNumber++;
    }
  }
  String getQuestionText() {
    return _questionsBank[_questionNumber].questionText;
  }

  bool getQuestionAnswers() {
    return _questionsBank[_questionNumber].questionAnswer;
  }

  bool isFinished(){
    if(_questionNumber < _questionsBank.length -1){
      return false;
    }else{
      return true;
    }
  }

  void reset(){
    _questionNumber=0;
  }
}
