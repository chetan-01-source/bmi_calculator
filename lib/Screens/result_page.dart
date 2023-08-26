
import 'package:bmi_calculator/constantname.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';
class ResultPage extends StatelessWidget {
  ResultPage({required this.bmi,required this.interpretetion,required this.result});
  String bmi = '';
  String result='';
  String interpretetion ='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR'
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              margin: EdgeInsets.only(right: 85.0,top: 35),
              child:Text('Your Result',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 50.0
              ),
              ),
            ),
          ),
         Expanded(
             flex:5,
             child: Container(
               margin: EdgeInsets.all(15.0),
               decoration: BoxDecoration(
                 color:Color(0xFF1D1F33) ,
                 borderRadius: BorderRadius.circular(15.0),
               ),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                 children: <Widget>[
                   Text(result,
                       style:kResultTextStyle
                   ),
                   Text(bmi,style: kBMITextStyle,),
                   Text(interpretetion,
                   textAlign: TextAlign.center,
                   style: kBodyTextStyle,),
                 ],

               ),
             ),
         ),
          Container(
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context, MaterialPageRoute(builder: (context)=>InputPage()));
              },
              child: Center(
                child: Text(
                  'RE-CALCULATE ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 25.0),
                ),
              ),
            ),
            margin: EdgeInsets.only(top: 10.0),
            color: kBottomColor,
            height: 80.0,
            width: double.infinity,
            padding: EdgeInsets.only(bottom: 20.0),
          ),
        ],
      )
    );
  }
}


