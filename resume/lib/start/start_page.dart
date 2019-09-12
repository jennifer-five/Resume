//get structure and idea from https://github.com/lizhuoyuan/flutter_study/blob/master/lib/login_page.dart
//and https://blog.csdn.net/BeamCSDN/article/details/86773767


import 'package:flutter/material.dart';
import 'package:resume/Navigator/tab_navigator.dart';

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  final _formKey = GlobalKey<FormState>();
  String _email = 'jenniferchang0915@gmail.com';
  String _password;
  bool _isObscure = true;
  Color _eyeColor;


  @override
  Widget build(BuildContext context) {
    final Color backgroundColor1 = Color(0xFF444152);
    final Color backgroundColor2 = Color(0xFF6f6c7d);
    final Color highlightColor = Color(0xfff65aa3);
    final Color foregroundColor = Colors.white;
    return Scaffold(
        body: Container(
            decoration: new BoxDecoration(
              gradient: new LinearGradient(
                begin: Alignment.centerLeft,
                end: new Alignment(1.0, 0.0), // 10% of the width, so there are ten blinds.
                // begin: Alignment.topLeft,
                // end: new Alignment(9.0, 0.0),
                colors: [backgroundColor1, backgroundColor2], // whitish to gray
                tileMode: TileMode.repeated, // repeats the gradient over the canvas
              ),
            ),
            key: _formKey,
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 22.0),
              children: <Widget>[
                SizedBox(
                  height: 40,
                ),
                buildTitle(),
                SizedBox(height: 40.0),
                buildNameTextField(context),
                SizedBox(height: 30.0),
                buildEmailTextField(context),
                SizedBox(height: 40.0),
                buildLoginButton(context),
                SizedBox(height: 30.0),

              ],
            )));
  }


  Container buildLoginButton(BuildContext context) {
    return Container(

      width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.only(left: 50, right: 50, top: 50),
      alignment: Alignment.center,
      child: Row(
        children: <Widget>[
          Expanded(
            child: RaisedButton(
              color: Colors.white24,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),),

                onPressed: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> TabNavigator()),);
                },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text('start',textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,fontSize:20,fontWeight: FontWeight.bold)),
                    )
                  ],
                ),
              ),

            ),

          )
        ],
      ),
    );

  }

  Container buildNameTextField(BuildContext context) {
    return getBox(context, 'ziyue(jennifer) cheng', Icons.person);
  }

  Container buildEmailTextField(BuildContext context) {
    return getBox(context,"jenniferchang0915@gmail.com",Icons.email);

  }

  Container buildTitle() {
    return Container(
      padding: const EdgeInsets.only(top: 80, bottom: 50),
      child: Center(
        child: Column(
          children: <Widget>[
            Container(
              height: 128,width: 128,
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                foregroundColor: Colors.white,
                radius: 100,
                child: Text('R',style: TextStyle(
                  fontSize: 80,fontWeight: FontWeight.w100
                ),),
                
              ),
              decoration: BoxDecoration(border: Border.all(color: Colors.white,width: 1),
              shape: BoxShape.circle
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Text("Welcom to Jennifer's resume",style: TextStyle(color: Colors.white),),
            )
          ],
        ),
      ),
    );
  }

  Container getBox(BuildContext context, String str, IconData icon) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(left: 20, right: 20),
      alignment: Alignment.center,

      child: Row(
        crossAxisAlignment:CrossAxisAlignment.center ,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding:EdgeInsets.only(top: 10,bottom: 10),
            child:Icon(icon,color: Colors.white) ,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(str,style: TextStyle(color: Colors.white,fontSize: 16),),
          ),
          

          Expanded(
            child: TextField(
              textAlign: TextAlign.center,

            ),
          )
        ],

      ),
    );
  }
}