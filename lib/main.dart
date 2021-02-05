import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quiz_app/welcome_screen.dart';



void main() {
  runApp(Quiz());
}

class Quiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
       SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
       )
    );
    
    return MaterialApp(
      home: WelcomeScreen()
    );
  }
}