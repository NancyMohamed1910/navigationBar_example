import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'NavigationBar Example',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Center(
            ElevatedButton(
              onPressed: () {
                /*Navigator.push(
                      context, MaterialPageRoute(builder: (context) => MySecond()));*/
                Navigator.pushNamed(context, '/second');
              },
              child: Text(' Go to NavigationBar example 1'),
            ),
            ElevatedButton(
              onPressed: () {
                /*Navigator.push(
                      context, MaterialPageRoute(builder: (context) => MySecond()));*/
                Navigator.pushNamed(context, '/third');
              },
              child: Text('Go to NavigationBar example 2'),
            ),
            //),
          ],
        ),
      ),
    );
  }
}
