import 'package:flutter/material.dart';
import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp>{
  var _questionIndex=0;

  void _answerQuestion(){
    setState((){
      _questionIndex = _questionIndex +1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What is your favourite color?",
      "What is your favourite number",
      "What is your favourite animal?"
    ];
    AppBar appBar = AppBar(
      title: Text("Questions app"),
    );
    Column body = Column(children: [
      Question(questions[_questionIndex]),
      RaisedButton(
          child: Text("Answer 1"),
          onPressed: _answerQuestion),
      RaisedButton(
          child: Text("Answer 2"),
          onPressed: _answerQuestion),
      RaisedButton(
          child: Text("Answer 3"),
          onPressed: _answerQuestion),
      RaisedButton(
          child: Text("Answer 4"),
          onPressed: _answerQuestion)

    ],);
    return MaterialApp(home: Scaffold(
      appBar: appBar,
      body: body,
    )
    );
  }
}