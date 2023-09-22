import 'dart:ffi';

import 'package:flutter/material.dart';

class MyNavigationBar2 extends StatefulWidget {
  const MyNavigationBar2({super.key});

  @override
  State<MyNavigationBar2> createState() => _MyNavigationBar2State();
}

class _MyNavigationBar2State extends State<MyNavigationBar2> {
  int currentPageIndex = 0;
  NavigationDestinationLabelBehavior labelBahavior =
      NavigationDestinationLabelBehavior.alwaysShow;
   //NavigationDestinationLabelBehavior labelBahavior =
  //    NavigationDestinationLabelBehavior.alwaysHide;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NavigationBar example 2'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text('Label behavior name: ${labelBahavior.name}',
            style: TextStyle(color: Colors.brown,fontWeight: FontWeight.bold,fontSize:15 ),),
            //Text('Label behavior value: ${labelBahavior.value}'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  labelBahavior = NavigationDestinationLabelBehavior.alwaysShow;
                });
              },
              child: const Text('alwaysShow'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  labelBahavior =
                      NavigationDestinationLabelBehavior.onlyShowSelected;
                });
              },
              child: const Text('onlyShowSelected'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  labelBahavior = NavigationDestinationLabelBehavior.alwaysHide;
                });
              },
              child: const Text('alwaysHide'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        labelBehavior: labelBahavior,
        selectedIndex: currentPageIndex,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          NavigationDestination(
            icon: Icon(Icons.commute),
            label: 'Commute',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.bookmark),
            icon: Icon(Icons.bookmark_border),
            label: 'Saved',
          ),
        ],
      ),
    );
  }
}
