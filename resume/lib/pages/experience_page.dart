import 'package:flutter/material.dart';

import 'dart:convert' show json;

import 'package:flutter/material.dart';
import 'package:resume/widget/app_bar.dart';


class ExperiencePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _ExperiencePageState();
  }
}

class _ExperiencePageState extends State<ExperiencePage> {
  final Color card1groundColor1 = Color(0xff44617b);
  final Color card1groundColor2 = Color(0xFF426579);
  final Color backgroundColor1 = Color(0xFF444152);
  final Color backgroundColor2 = Color(0xFF6f6c7d);
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      //read json file
        future: DefaultAssetBundle.of(context).loadString("assets/experience.json"),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<dynamic> data = json.decode(snapshot.data.toString());

            return Container(
              decoration:  BoxDecoration(
                gradient:  LinearGradient(
                  begin: Alignment.centerLeft,
                  end: new Alignment(1.0, 0.0), // 10% of the width, so there are ten blinds.
                  // begin: Alignment.topLeft,
                  // end: new Alignment(9.0, 0.0),
                  colors: [backgroundColor1, backgroundColor2], // whitish to gray
                  tileMode: TileMode.repeated, // repeats the gradient over the canvas
                ),
              ),
              child: Column(

                children: <Widget>[
                  //title
                  Container(
                    child: AppBarW(title: 'experience page'),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: data.length,
                      itemBuilder: (BuildContext context, int index) {
                        return  Padding(
                          padding: EdgeInsets.only(bottom: 20,left: 10,right: 10),
                          child: Container(
                            decoration:BoxDecoration(
                                border: Border(
                                  top: BorderSide(
                                      color: Colors.grey,
                                      width: 3, style: BorderStyle.solid
                                  ),
                                )
                            ),
                            child:
                            //styly for context
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                _titleBox("${data[index]["title"]} :",Icons.title),
                                _boxString("project name:","${data[index]["title"]}"),
                                _boxString("name:","${data[index]["name"]}"),
                                _boxString("time:","${data[index]["time"]}"),
                                _boxString("detail:","${data[index]["detail"]}"),


                              ],
                            ),

                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            );
          }
          return new CircularProgressIndicator();

        }

    );


  }
  _boxString(String title,String info){
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(title,style: TextStyle(fontSize: 20),),
        Text(info,style: TextStyle(fontSize: 18,color: Colors.white),)
      ],


    );


  }

  _titleBox( String str, IconData icon) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Padding(
              padding:EdgeInsets.only(bottom: 10 ,right: 10),
              child:Icon(Icons.event_note,color: Colors.teal) ,
            ),
            Text(str,style: TextStyle(fontSize: 25,color: Colors.teal),)
          ],
        ),
      ],
    );

  }

}