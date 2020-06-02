import 'package:flutter/material.dart';
/* void main() {
  runApp(MyApp());
} */

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  
  var questionIndex = 0;

  void answerQuestion() {
    questionIndex = questionIndex + 1;
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
            Text(questions.elementAt(0),),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: null,
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