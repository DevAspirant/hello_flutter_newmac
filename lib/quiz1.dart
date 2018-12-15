import 'package:flutter/material.dart';

class AnimalQuiz{
  var images = ["1","2","3","4"];
  var questions = ["hello 1","hello 2","hello 3","hello 4"];
  var choices = ["a","b","c","d"];
  var corretAnswer = ["a"];
  
}

var finalScore = 0;
var questionNum = 0;
var quiz = new AnimalQuiz();


class Quiz1 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new Quiz1State();
  }
}

class Quiz1State extends State<Quiz1> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new WillPopScope(
      onWillPop: ()async => false,
      child: Scaffold(
        body: new Container(
          margin: const EdgeInsets.all(10.0),
          alignment: Alignment.topCenter,
          child: new Column(
            children: <Widget>[
              new Padding(padding: EdgeInsets.all(20.0)),
              new Container(
                alignment: Alignment.centerRight,
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text("Question ${questionNum + 1} of ${quiz.questions.length}",
                    style: new TextStyle(fontSize: 22.0),),
                    new Text("Score: $finalScore",
                    style: new TextStyle(fontSize: 22.0),)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}