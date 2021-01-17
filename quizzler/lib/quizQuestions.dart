import 'questions.dart';

class QuizQuestions{
  int _que = 0;
  List<Question> _questionBank = [
    Question('The five rings on the Olympic flag are interlocking',true),
    Question('Mount Kilimanjaro is the highest mountain in the world', false),
    Question('Strictly Come Dancing first aired in the UK in 2005', false),
    Question('A group of swans is known as a bevy', true),
    Question('Sydney is the capital of Australia',false),
    Question('A heptagon has eight sides', false),
    Question('Coffee is made from berries', true),
    Question('Alexander Fleming discovered penicillin', true),
    Question('Cinderella was the first Disney princess', false),
    Question('Monaco is the smallest country in the world', false),
  ];
  void nextQuestion(){
    if(_que<_questionBank.length-1)
      {
        _que++;
      }
  }

bool isFinshed(){
  if(_que>=_questionBank.length-1)
    {
      print('Condition is true');
      return true;
    }
  else{
    return false;
  }
}

  String getquestions(){
    return _questionBank[_que].questions;
  }

  bool getanswers(){
    return _questionBank[_que].answers;
  }

  void reset()
  {
    _que=0;
  }
}

