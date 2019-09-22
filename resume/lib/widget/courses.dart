import 'dart:async';

import 'package:flutter/material.dart';
class Courses extends StatelessWidget{
  final Color card1groundColor1 = Color(0xff44617b);
  final Color card1groundColor2 = Color(0xFF426579);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:BoxDecoration(
          border: Border(
            top: BorderSide(
                color: Colors.grey,
                width: 3, style: BorderStyle.solid
            ),
          )
      ),
      padding: EdgeInsets.only(left: 10),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding:EdgeInsets.only(bottom: 10 ,right: 10,top: 10),
                child:Icon(Icons.event_note,color: Colors.white) ,
              ),
              Text('Relevant Courses: ',style: TextStyle(fontSize: 25,color: Colors.white),)
            ],
          ),

          Row(
            children: <Widget>[

              Container(
                padding: EdgeInsets.only(left: 5),
                child: Column(
                  children: <Widget>[
                    Text(' Data Mining\n Software Development Methods\n Algorithms and Data Structures\n Introduction to Computer Architecture\n Database System\n Calculus\n Matric Algebra\n Discrete and Combinatorial Mathematics\n Probability and Statistic\n Regression analysis\n',textAlign: TextAlign.start,style: TextStyle(color: Colors.white,fontSize: 18),),
                    //Text('Computerscience',textAlign: TextAlign.start,style: TextStyle(color: Colors.white),)
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 10.0),
        ],
      ),

    );
  }
  Container Symble(String str){
    return Container(
      height: 50,width: 50,
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
        radius: 100,
        child: Text(str,style: TextStyle(
            fontSize: 40,fontWeight: FontWeight.w100
        ),),

      ),
      decoration: BoxDecoration(border: Border.all(color: Colors.white,width: 1),
          shape: BoxShape.circle
      ),
    );
  }
}
