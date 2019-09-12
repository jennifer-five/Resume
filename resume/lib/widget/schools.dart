import 'dart:async';

import 'package:flutter/material.dart';
class Schools extends StatelessWidget{
  final Color card1groundColor1 = Color(0xff44617b);
  final Color card1groundColor2 = Color(0xFF426579);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:BoxDecoration(
        border: Border(
          bottom: BorderSide(
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
                padding:EdgeInsets.only(bottom: 10 ,right: 10),
                child:Icon(Icons.event_note,color: Colors.white) ,
              ),
              Text('Education Trip: ',style: TextStyle(fontSize: 25,color: Colors.white),)
            ],
          ),
          Row(
            children: <Widget>[
              Symble('L'),

              Container(
                padding: EdgeInsets.only(left: 20),
                child: Column(
                  children: <Widget>[
                    Text('2015-2017: Langara College\nComputers cience',textAlign: TextAlign.start,style: TextStyle(color: Colors.white),),
                    //Text('Computerscience',textAlign: TextAlign.start,style: TextStyle(color: Colors.white),)
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 10.0),
          Row(
            children: <Widget>[
              Symble('V'),

              Container(
                padding: EdgeInsets.only(left: 20),
                child: Column(
                  children: <Widget>[
                    Text('2018-Now: University of Victoria\nCombined Computer Science and Statistics',textAlign: TextAlign.start,style: TextStyle(color: Colors.white,fontSize: 14),),
                    //Text('Combined Computer Science and Statistics',textAlign: TextAlign.left,style: TextStyle(color: Colors.white),)
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
