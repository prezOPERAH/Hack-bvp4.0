import 'package:flutter/material.dart';



class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children= [
    HomeView(),
    ExplorePage(),
    ProgressPage(),

  ];





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("EDU PLANNER"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CourseView(course:newCourse,)),
              );
            },
          )
        ],
      ),
    body: _children[_currentIndex],
    bottomNavigationBar: BottomNavigationBar(
      onTap: onTabTapped,
      currentIndex: _currentIndex,
      items: [
        BottomNavigationBarItem(
          icon: new Icon(Icons.home),
          title: new Text("Home"),

        ),
        BottomNavigationBarItem(
          icon: new Icon(Icons.explore),
          title: new Text("Explore"),

        ),
        BottomNavigationBarItem(
          icon: new Icon(Icons.history),
          title: new Text("Progress"),

        ),
      ]
      ),  
    );
  }
}
 
void onTabTapped( int index) {
  setState(() {
    _currentIndex= index;
  }); 
 }
}