import 'package:flutter/material.dart';


// ignore: must_be_immutable
class ScoreScreen extends StatelessWidget {
  int result;
  int maximum;

  ScoreScreen({Key key, @required this.result, @required this.maximum}) 
  : super(key: key);

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
          Expanded(
            child: 
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Voce Acertou', 
                  style: TextStyle(
                    fontSize: 32, 
                    color: Color(0xff263238)
                  ),
                ),
                SizedBox(height: 60),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      '$result', 
                      style: TextStyle(
                        fontSize: 112, 
                        color: Color(0xffE83B86)
                      )
                    ),
                    Text(
                      '/ $maximum',
                      style: TextStyle(
                        fontSize: 32,
                        color: Color(0xff263238)
                      )
                    )
                  ],
                )
              ]
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
                  Navigator.popUntil(context, (route) => route.isFirst);
                }, 
                child: Text(
                  'Jogar Novamente', 
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