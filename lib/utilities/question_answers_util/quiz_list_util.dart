import 'package:flutter_quiz_app/moduls/question_answers_model.dart';

class QuizListUtil {
  int _index = 0;
  List<QuestionAnswersModel> suroolorJooptop = [
    QuestionAnswersModel(
        suroolor: "Flutter курсу жагып жатабы?", jooptor: true),
    QuestionAnswersModel(suroolor: 'Kitaydin тамагы жактыбы?', jooptor: false),
    QuestionAnswersModel(suroolor: 'Agul gulu жактыбы??', jooptor: true),
    QuestionAnswersModel(suroolor: 'Osh жактыбы', jooptor: true),
    QuestionAnswersModel(
        suroolor: 'Amerikadagy kyrgyzdardyn IT-kursu jaktyby', jooptor: false),
    QuestionAnswersModel(
        suroolor: 'Кесиптештер жаны дизайн кесиби жактыбы', jooptor: true),
  ];

  String? suroonuAlipKel() {
    if (_index < suroolorJooptop.length) {
      return suroolorJooptop[_index].suroolor;
    } else {
      return '';
    }
  }

  bool? jooptuAlopKel() {
    if (_index < suroolorJooptop.length) {
      return suroolorJooptop[_index].jooptor;
    } else {}
    return null;
  }

  void otkoz() {
    _index++;
  }

  restart() {
    _index = 0;
  }
}

final QuizListUtil quizListUtil = QuizListUtil();
