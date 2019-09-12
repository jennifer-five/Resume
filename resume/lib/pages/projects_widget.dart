import 'dart:convert' show json;

import 'package:flutter/material.dart';
import 'package:resume/widget/app_bar.dart';


class Projects extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _ProjectsState();
  }
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
          future: DefaultAssetBundle.of(context).loadString("assets/person.json"),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<dynamic> data = json.decode(snapshot.data.toString());

              return Column(
                children: <Widget>[
                  Container(
                    child: AppBarW(title: 'education page'),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: data.length,
                      itemBuilder: (BuildContext context, int index) {
                        return new Card(
                          child:

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[

                              new Text("Name: ${data[index]["name"]}"),
                              new Text("Age: ${data[index]["age"]}"),
                              new Text("Height: ${data[index]["height"]}"),
                              new Text("Gender: ${data[index]["gender"]}"),
                            ],
                          ),

                        );
                      },
                    ),
                  )
                ],
              );
            }
            return new CircularProgressIndicator();

          }
        //future: _gerData(), // 用户定义的需要异步执行的代码，类型为Future<String>或者null的变量或函数
      );


  }

  Widget _buildFuture(BuildContext context, AsyncSnapshot snapshot){

  }
}