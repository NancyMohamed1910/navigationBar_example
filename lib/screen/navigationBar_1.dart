import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/icon_data.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyNavigationBar1 extends StatefulWidget {
  const MyNavigationBar1({super.key});

  @override
  State<MyNavigationBar1> createState() => _MyNavigationBar1State();
}

class _MyNavigationBar1State extends State<MyNavigationBar1> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NavigationBar example 1'),
        centerTitle: true,
      ),
      body: <Widget>[
        Container(
          color: Colors.blue,
          alignment: Alignment.center,
          child: Text('Home'),
        ),
        Container(
          color: Colors.green,
          alignment: Alignment.center,
          child: Text('Business'),
        ),
        Container(
          color: Colors.yellow,
          alignment: Alignment.center,
          child: Text('School'),
        )
      ][currentPageIndex],
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,//default nalue is 0
          //لو حذفت السطر دا الصفحان عادي تشتعل  و لكن اول ايكونة هي بس اللي هتتعلم
        indicatorColor: Colors.orange,
        backgroundColor: Colors.tealAccent,
        destinations: [
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'home',
          ),
          NavigationDestination(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.school),
            icon: Icon(Icons.school_outlined),
            label: 'School',
          ),
        ],
      ),
    );
  }
}

