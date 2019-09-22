
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter/material.dart';
import 'package:resume/pages/projects_widget.dart';
import 'package:resume/widget/app_bar.dart';

import 'package:flutter/material.dart';

const APPBAR_SCROLL_OFFSET =100;

class MyPage extends StatefulWidget{
  @override
  _MyPageState createState() =>  _MyPageState();

}
class _MyPageState extends State<MyPage>{
  final PageController _controller = PageController(
    initialPage : 0,
  );
  final Color backgroundColor1 = Color(0xFF444152);
  final Color backgroundColor2 = Color(0xFF6f6c7d);
  List<Widget> imageList = List();
  double appBarAlpha = 0;

  @override
  void initState() {
    //list of the image store in the assets
    imageList
      ..add(Image.asset("assets/1.jpg"))
      ..add(Image.asset("assets/2.jpg"))
      ..add(Image.asset("assets/3.jpg"))
      ..add(Image.asset("assets/4.jpg"))
      ..add(Image.asset("assets/5.jpg"));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      //backgroundColor: backgroundColor2,

        body: Container(
                  //height: 800,
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
                        child: AppBarW(title: 'my page'),
                      ),


                      Column(
                        children: <Widget>[
                        SizedBox(height: 90,),

                          Container(

                            decoration:BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                      color: Colors.grey,
                                      width: 3, style: BorderStyle.solid
                                  ),top: BorderSide(
                                      color: Colors.grey,
                                      width: 3, style: BorderStyle.solid
                                  ),
                                )
                            ),
                            child:Row(
                              children: <Widget>[
                                firstSwiperView() ,
                                Center(
                                  child: Text('travelling',style: TextStyle(color: Colors.white,fontSize: 20),),
                                )
                              ],
                            )
                          ),
                          Container(

                            decoration:BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                      color: Colors.grey,
                                      width: 3, style: BorderStyle.solid
                                  ),
                                )
                            ),
                            child:Row(
                              children: <Widget>[
                                Container(
                                  height: 150,
                                  width: MediaQuery.of(context).size.width/3*2,
                                  decoration:BoxDecoration(
                                      border: Border(
                                        right: BorderSide(
                                            color: Colors.grey,
                                            width: 3, style: BorderStyle.solid
                                        ),
                                      )
                                  ),
                                  child: Center(
                                    child: Text("cooking & baking",style: TextStyle(color: Colors.white,fontSize: 20),),
                                ),
                            ),
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Icon(Icons.fastfood,size:50 ,color: Colors.white,),
                                )
                              ],
                            )
                          ),
                          Container(

                            decoration:BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                      color: Colors.grey,
                                      width: 3, style: BorderStyle.solid
                                  ),
                                )
                            ),
                            child:Row(
                              children: <Widget>[

                                Container(
                                  height: 150,
                                  width: MediaQuery.of(context).size.width/3,
                                  decoration:BoxDecoration(
                                      border: Border(
                                        right: BorderSide(
                                            color: Colors.grey,
                                            width: 3, style: BorderStyle.solid
                                        ),
                                      )
                                  ),
                                  child: Center(
                                    child: Text("snow\nboarding",style: TextStyle(color: Colors.white,fontSize: 20),),
                                ),
                            ),
                                Padding(
                                  padding: EdgeInsets.only(left: 25),
                                  child: Image.asset("assets/6.jpg",height: 150,alignment: Alignment.center,),
                                )

                              ],
                            )
                          ),

                        ],
                      )
                    ],
                  )
              ),
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

  Widget firstSwiperView() {
    return Container(
      width: MediaQuery.of(context).size.width/3*2,
      height: 150,
      decoration:BoxDecoration(
          border: Border(
            right: BorderSide(
                color: Colors.grey,
                width: 3, style: BorderStyle.solid
            ),
          )
      ),
      child: Swiper(
        itemCount: imageList.length,
        itemBuilder: _swiperBuilder,
        pagination: SwiperPagination(
            alignment: Alignment.bottomRight,
            margin: const EdgeInsets.fromLTRB(0, 0, 20, 10),
            builder: DotSwiperPaginationBuilder(
                color: Colors.black54,
                activeColor: Colors.white
            )
        ),
        controller: SwiperController(),
        scrollDirection: Axis.horizontal,
        autoplay: true,

      ),
    );
  }

  Widget _swiperBuilder(BuildContext context, int index) {
    return (imageList[index]);
  }
}



