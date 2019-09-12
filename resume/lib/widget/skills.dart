import 'dart:async';

import 'package:flutter/material.dart';
class Skills extends StatelessWidget{
  final Color card1groundColor1 = Color(0xff44617b);
  final Color card1groundColor2 = Color(0xFF426579);

  @override
  Widget build(BuildContext context) {
    final double width1 =  MediaQuery.of(context).size.width ;
    return Column(
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
        SizedBox(height: 10),
        _card(width1,'OS','mac os', 'Windows','Linux'),
        SizedBox(height: 20),
        _card(width1, 'Program Language', 'Java', 'C/ C++', 'Python'),
        SizedBox(height: 20),
        _card(width1, '  Data Analysic', 'R', 'Matlab', 'DBeaver/MySOL'),
        SizedBox(height: 20),
        _card(width1, '  Web Designer', 'HTML/Java Script', 'VUE/SCSS/TS', 'Flutter'),


      ],
    );
  }

Row skill(  double width1,String title,String str1, String str2, String str3){
    return Row(
      children: <Widget>[
        Container(
            child: Container(
              width: 100,
              decoration:BoxDecoration(
                  border: Border(
                      right: BorderSide(
                          color: Colors.grey,
                          width: 1,style: BorderStyle.solid
                      )
                  )
              ),
              child: Center(
                child: Text(title,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
              ),
            ),

          ),
        Container(
          width: (width1-12)/3*2,
          child:
          Column(
            children: <Widget>[
              Expanded(
              child:_item(str1,Icons.radio_button_checked),
          ),
              Expanded(
              child:_item(str2,Icons.radio_button_checked),
          ),
              Expanded(
              child:_item(str3,Icons.radio_button_checked),
          ),

            ],
          )
        ),
      ]
        );


}


  _item(String s, IconData icon) {
    BorderSide borderSide= BorderSide(width: .8, color: Colors.white);
    return FractionallySizedBox(
        widthFactor: 1,
        child:Row(
        children: <Widget>[
        Padding(
        padding: EdgeInsets.only(left: 10,right: 10),
    child: Icon(icon,color: Colors.white),
    ),
    Text(s,style: TextStyle(color: Colors.white,fontSize: 20))
    ],
    )

);
  }
  _card (double width, String title,String str1, String str2, String str3){
    return Container(
      height: 80,
      width: width-12,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: new Alignment(1.0, 0.0), // 10% of the width, so there are ten blinds.

          colors: [card1groundColor1.withOpacity(0.5), card1groundColor2.withOpacity(0.5)], // whitish to gray
          tileMode: TileMode.repeated, // repeats the gradient over the canvas
        ),
        borderRadius: BorderRadius.all(Radius.circular(6)),
      ),
      //padding: EdgeInsets.fromLTRB(0, 80, 0, 10),
      child:
      skill(width,title,str1, str2,str3),
    );
  }
}
