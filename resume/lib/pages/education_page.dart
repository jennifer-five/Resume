import 'package:flutter/material.dart';
import 'package:resume/start/start_page.dart';
import 'package:resume/widget/app_bar.dart';
import 'package:resume/widget/schools.dart';
import 'package:resume/widget/skills.dart';
import 'package:resume/widget/web_view.dart';
const APPBAR_SCROLL_OFFSET =100;

class Educationpage extends StatefulWidget{
  @override
  _EducationpageState createState() =>  _EducationpageState();

}
class _EducationpageState extends State<Educationpage>{
  final PageController _controller = PageController(
    initialPage : 0,
  );
  final Color backgroundColor1 = Color(0xFF444152);
  final Color backgroundColor2 = Color(0xFF6f6c7d);
  double appBarAlpha = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: backgroundColor2,

        body: SingleChildScrollView(
          child: MediaQuery.removePadding(
            removeTop: true,
            context: context,
            child: NotificationListener(
              onNotification: (scrollNotification) {
                if (scrollNotification is ScrollUpdateNotification &&
                    scrollNotification.depth == 0) {
                  _onScroll(scrollNotification.metrics.pixels);
                }
              },
              child: Container(
                  //height: 1000,
                  width: MediaQuery.of(context).size.width,
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
                  child: Stack(
                    children: <Widget>[
                      Container(
                        child: AppBarW(title: 'education page'),
                      ),


                      Column(
                        children: <Widget>[
                          SizedBox(height: 90.0),
                          Schools(),
                          SizedBox(height: 10.0),
                          Padding(
                            padding: EdgeInsets.only(right: 6,left: 6),
                            child: Skills(),
                          ),
                          SizedBox(height: 20.0),
                        ],
                      )
                    ],
                  )
              ),),
          ),

        )
        );



  }

  _onScroll(offset) {
    double alpha = offset / APPBAR_SCROLL_OFFSET;
    if (alpha < 0) {
      alpha = 0;
    } else if (alpha > 1) {
      alpha = 1;
    }
    setState(() {
      appBarAlpha = alpha;
    });
    print(appBarAlpha);
  }



}