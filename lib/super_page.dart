import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin<HomePage> {
  int _currentIndex = 0;
  GlobalKey _globalKey = GlobalKey();
  int _page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Whats up"),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 60.0,
        key: _globalKey,
        index: 0,
        color: Color(0xFFC41A3B),
        buttonBackgroundColor: Color(0xFFC41A3B),
        backgroundColor: Color(0xFFFBE0E6),
        animationCurve: Curves.easeOutBack,
        animationDuration: Duration(seconds: 1),
        onTap: (index){
          setState(() {
            _page = index;
          });
        },
        items: <Widget>[
          Image.asset("assets/icons/home_s.png", color: Colors.white,),
          Icon(Icons.message, size: 28.0,color: Colors.white),
          Icon(Icons.person, size: 28.0,color: Colors.white),
        ],
      ),
    );
  }
}

//BottomNavigationBar(
//        currentIndex: _currentIndex,
//        onTap: (int index) {
//          setState(() {
//            _currentIndex = index;
//          });
//        },
//        items: allDestinations.map((Destination destination) {
//          return BottomNavigationBarItem(
//              icon: Icon(destination.icon),
//              backgroundColor: destination.color,
//              title: Text(destination.title)
//          );
//        }).toList(),
//      ),