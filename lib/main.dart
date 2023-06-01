import 'package:flutter/material.dart';
import 'package:ta_mdp/homepage.dart';
import 'package:ta_mdp/profile.dart';
import 'package:ta_mdp/splashscreen.dart';
import 'package:ta_mdp/users.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MySplashScreen(),
    );
  }
}

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({Key? key}) : super(key: key);

  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentIndex = 0;
  final List<Widget> _children = [HomePage(), GetData(), ProfilePage()];

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: onTappedBar,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_sharp), title: new Text(' ')),
            BottomNavigationBarItem(
                icon: Icon(Icons.list_alt_sharp), title: new Text(' ')),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline_sharp), title: Text(' ')),
          ],
        ));
  }
}
