import 'package:flutter/material.dart';
import 'package:resume/pages/education_page.dart';
import 'package:resume/pages/experience_page.dart';
import 'package:resume/pages/my_page.dart';
import 'package:resume/pages/project_page.dart';
import 'package:resume/pages/projects_widget.dart';


class TabNavigator extends StatefulWidget{
  @override
  _TabNavigatorState createState() =>  _TabNavigatorState();

}
class _TabNavigatorState extends State<TabNavigator>{
  final _defaultColor = Colors.grey;
  final _activeColor = Colors.blue;
  int _currentIndex =0;
  final Color backgroundColor1 = Color(0xFF444152);
  final Color backgroundColor2 = Color(0xFF6f6c7d);
  final PageController _controller = PageController(
    initialPage : 0,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: PageView(
        controller: _controller,
        children: <Widget>[
          Educationpage(),
          ProjectPage(),
          ExperiencePage(),
          MyPage(),

        ],
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index){
            _controller.jumpToPage(index);
            setState(() {
              _currentIndex=index;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon:Icon(Icons.home, color: _defaultColor),
                activeIcon: Icon(Icons.book, color: _activeColor),
                title:Text('education',style: TextStyle(color: _currentIndex!=0? _defaultColor:_activeColor),)
            ),
            BottomNavigationBarItem(
                icon:Icon(Icons.search, color: _defaultColor),
                activeIcon: Icon(Icons.laptop, color: _activeColor),
                title:Text('project',style: TextStyle(color: _currentIndex!=1? _defaultColor:_activeColor),)
            ),
            BottomNavigationBarItem(
                icon:Icon(Icons.list, color: _defaultColor),
                activeIcon: Icon(Icons.search, color: _activeColor),
                title:Text('experience',style: TextStyle(color: _currentIndex!=2? _defaultColor:_activeColor),)
            ),
            BottomNavigationBarItem(
                icon:Icon(Icons.people, color: _defaultColor),
                activeIcon: Icon(Icons.camera_alt, color: _activeColor),
                title:Text('myself',style: TextStyle(color: _currentIndex!=3? _defaultColor:_activeColor),)
            )
          ]),
    );
  }

}