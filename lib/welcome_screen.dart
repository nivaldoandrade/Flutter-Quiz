import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'quiz_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Material(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage('lib/assets/flutter_logo.png'),
            width: 84,
            fit: BoxFit.contain,
          ),
          SizedBox(
            height: 24.0,
          ),
          Text(
            'Flutter\nQuiz', 
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.w800,
              color: HexColor('#374952'), 
            ),
          ),
          SizedBox(
            height: 88.0,
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                context, 
                MaterialPageRoute(builder: 
                  (context) => QuizScreen(),
                ),
              );
            }, 
            child: Text(
              'Começar', 
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w600,
                color: Color(0xffF7F7F7)
              ),
            ),
            color: Color(0xffDA0175),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                20,
              ),
            ),
            padding: EdgeInsets.fromLTRB(90, 16, 90, 16),
          )
        ],
      ),
    );
  }
}