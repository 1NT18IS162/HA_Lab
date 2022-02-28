
import 'package:flutter/material.dart';
import 'package:quizapp/main.dart';

void main() {
  runApp(const MyApp() );
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Quiz",
      home: SafeArea(
        child:Quiz() ,),
      
    );
  }
}

class Question{
  final String questionText;
  final bool answer;


  Question({required this.questionText,required this.answer});

}

class Questions{

  List<Question> questionBank = [
Question(questionText: "Question1", answer: true), // set the Question and Answer
Question(questionText: "Question2", answer: true),
Question(questionText: "Question3", answer: false),
Question(questionText: "Question4", answer: true),
Question(questionText: "Question5", answer: false),
Question(questionText: "Question6", answer: false),
Question(questionText: "Question7", answer: false),

];
}
class Quiz extends StatefulWidget {
  const Quiz({ Key? key }) : super(key: key);

  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int qnum=0;
  int curscore=0;
  Questions questions= Questions();

  void updateQNum(){
    setState(() {
      qnum= qnum+1;
      print('$qnum');
    });
  }
  void updateScore(bool choice,int qnum){
    if(questions.questionBank.length == qnum){
      print("End of question");
    }
    else{
      if(questions.questionBank[qnum].answer == choice){
      setState(() {
        curscore++;
      });
    }
    }
  }
  bool checkQNum(int qnum){
    return qnum<questions.questionBank.length ?true:false;
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Center(
          child:  Text(
            checkQNum(qnum)?questions.questionBank[qnum].questionText.toString():"End",
            style: const TextStyle(fontSize: 40),
          ),
        ),

        const SizedBox(height: 20,),
        ElevatedButton(
          onPressed: (){
            setState(() {
              if(qnum == questions.questionBank.length){
                print("End of Questions");
              }
              else{
                updateScore(true, qnum);
                updateQNum();
              }
              print('$curscore');
            });
        }, child: const Text('True'),),
        
        const SizedBox(height: 20,),
        ElevatedButton(
          onPressed: (){
            setState(() {
               if(qnum == questions.questionBank.length){
                print("End of Questions");
              }
              else{
                updateScore(false, qnum);
                updateQNum();
              }
              print('$curscore');
            });
        }, child: const Text('False'),),

        // const SizedBox(
        //   height: 100,
        // ),
        // const SizedBox(
        //   height: 50,
        // ),
        const Padding(padding: EdgeInsets.all(30.0),
        child: Center(
          child: Text("Current score is:", style: TextStyle(fontSize: 30),
          ),
        ),
        ),

         Padding(padding: EdgeInsets.all(30.0),
        child: Center(  // Remove const keyword
          
          child: Text(
            '$curscore', 
            style: TextStyle(fontSize: 30),
          ),
        ),
        ),
      ],      
    );
  }
}