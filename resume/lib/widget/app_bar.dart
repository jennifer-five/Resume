import 'dart:async';

import 'package:flutter/material.dart';
import 'package:resume/start/start_page.dart';
class AppBarW extends StatefulWidget{
  final String title;

  const AppBarW({Key key, this.title}) : super(key: key);

   @override
  _AppBarWState createState()=> _AppBarWState();
}
class _AppBarWState extends State<AppBarW>{

  @override
  Widget build(BuildContext context) {
    return Container(

      color: Colors.white12,
      padding: EdgeInsets.fromLTRB(0, 40, 0, 10),
      child: FractionallySizedBox(
        widthFactor: 1,
        child: Stack(
          children: <Widget>[

            GestureDetector(
              onTap: (){
                print('a');
                Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> StartPage()),);
              },
              child: Container(
                margin: EdgeInsets.only(left: 10),
                child: Icon(
                  Icons.close,
                  color: Colors.white70,
                  size: 26,

                ),
              ),
      ),

            Positioned(

              left: 0,
              right: 0,
              child: Center(
                child: Text(
                  widget.title ?? '',
                  style: TextStyle(color: Colors.white12,fontSize: 20),
                ),
              ),
            )
          ],
        ),
      ),//撑满屏幕宽度
    );
  }

}