import 'package:flutter/material.dart';
import 'package:quiz_app/question.dart';
import 'package:quiz_app/score_screen.dart';


class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int answer = 0;
  int score = 0;
  int index = 0;
  List<Question> listQuestions = Question.getQuestionList();

  void verifyAnswer() {
    if(answer == listQuestions[index].answer) {
      score = score + 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff374952),
        title: Image(
          image: AssetImage('lib/assets/flutter_logo.png'),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(32, 56, 32, 31),
            alignment: AlignmentDirectional.centerStart ,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'PERGUNTA ${index + 1}', 
                  style: TextStyle(
                    fontSize: 12, 
                    fontWeight: FontWeight.w400
                  ),
                ),
                SizedBox(height: 16,),
                Text(
                  listQuestions[index].questionText,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff263238)
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(32, 10, 32, 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.15),
                        blurRadius: 3,
                        spreadRadius: 2,
                        offset: Offset(1, 3),
                      ),
                    ],
                  ),
                  child: RadioListTile(
                    value: 1, 
                    title: Text(listQuestions[index].option1),
                    groupValue: answer, 
                    onChanged: (int value)  {
                      setState(() {
                        answer = value;
                      });
                    }
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(32, 10, 32, 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.15),
                        blurRadius: 3,
                        spreadRadius: 2,
                        offset: Offset(1, 3),
                      ),
                    ],
                  ),
                  child: RadioListTile(
                    value: 2, 
                    title: Text(listQuestions[index].option2),
                    groupValue: answer, 
                    onChanged: (int value)  {
                      setState(() {
                        answer = value;
                      });
                    }
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(32, 10, 32, 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.15),
                        blurRadius: 3,
                        spreadRadius: 2,
                        offset: Offset(1, 3),
                      ),
                    ],
                  ),
                  child: RadioListTile(
                    value: 3, 
                    title: Text(listQuestions[index].option3),
                    groupValue: answer, 
                    onChanged: (int value)  {
                      setState(() {
                        answer = value;
                      });
                    }
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(32, 10, 32, 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.15),
                        blurRadius: 3,
                        spreadRadius: 2,
                        offset: Offset(1, 3),
                      ),
                    ],
                  ),
                  child: RadioListTile(
                    value: 4, 
                    title: Text(listQuestions[index].option4),
                    groupValue: answer, 
                    onChanged: (int value)  {
                      setState(() {
                        answer = value;
                      });
                    }
                  ),
                ),
              ],
            ), 
          ),
          Container(
            height: 87,
            decoration: BoxDecoration(
              color: Color(0xffFFFFFF),
              boxShadow: [
                BoxShadow(
                  blurRadius: 4,
                  color: Color(0xff000000).withOpacity(0.25),
                  offset: Offset(0, -1),
                  spreadRadius: 0,
                ),
              ]
            ),
            child: Center(
              child: FlatButton(
                onPressed: () {
                  verifyAnswer();
                  setState(() {
                    if(listQuestions.length - 1 > index) {
                      index = index + 1;
                      answer= 0;
                    } else {
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder: 
                        (context) => ScoreScreen(
                          maximum: listQuestions.length, 
                          result: score,
                          )
                        )
                      );
                    }
                  });
                }, 
                child: Text(
                  'Responder', 
                  style: TextStyle(fontSize: 16),
                ),
                color: Color(0xffDA0175).withOpacity(0.35),
                textColor: Color(0xffF7F7F7),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.fromLTRB(80, 12, 80, 12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}