import 'package:flutter/material.dart';
import './quiz1.dart';

void main(){
  runApp(
    new MaterialApp(home: new AnimalQuiz(),
        )
      );
    }
    
  class AnimalQuiz extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
      return new AnimalQuizState();
          }
      }
      
      class AnimalQuizState extends State<AnimalQuiz>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("quiz app"),
        backgroundColor: Colors.green,
      ),

      body: new Container(
        margin: const EdgeInsets.all(15.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new MaterialButton(
              height: 50.0,
              color: Colors.green,
              onPressed: null,
              child: new Text('quiz 1',
              style: new TextStyle(fontSize: 18.0,
              color: Colors.white),),
            )
          ],
        ),
      ),
    );
  }

  void startQuiz(){
    setState(() {
    Navigator.push(context, new MaterialPageRoute(builder: (context)=>new Quiz1()));      
    });
  }
}