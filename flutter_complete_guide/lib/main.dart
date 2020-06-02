import 'package:flutter/material.dart';
/* void main() {
  runApp(MyApp());
} */

void main() => runApp(MyApp());

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp>{
  
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context){
    
    var questions = [
      'Whats is your Favoure food?',
      'Whats is your Favoure Animal?'
    ];

    return MaterialApp(home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter APP"),
        ),
        body: Column(children:[
            Text(questions[questionIndex],),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: ()=> print('Answer 2 given'),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: (){
                print('Answer 3 given');
              },
            ),
        ],),
      ),
    );
  }
}