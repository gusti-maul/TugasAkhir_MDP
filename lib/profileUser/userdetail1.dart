import 'dart:math';

import 'package:flutter/material.dart';
import 'dart:ui' as ui;

void main() => runApp(UserDetail1());

class UserDetail1 extends StatefulWidget {
  UserDetail1({Key? key}) : super(key: key);

  @override
  _UserDetail1State createState() => _UserDetail1State();
}

class _UserDetail1State extends State<UserDetail1> {
  @override
  Widget build(BuildContext context) {
    Random random = new Random();
    int randomNumber = random.nextInt(1000);
    int randomNumber2 = random.nextInt(100000);
    int randomNumber3 = random.nextInt(100000);

    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    final String imgUrl = 'https://reqres.in/img/faces/2-image.jpg';

    return Stack(
      children: <Widget>[
        Container(
          color: Colors.blue,
        ),
        Image.network(
          imgUrl,
          fit: BoxFit.fill,
        ),
        BackdropFilter(
            filter: ui.ImageFilter.blur(
              sigmaX: 6.0,
              sigmaY: 6.0,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.9),
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
              ),
            )),
        Scaffold(
            drawer: Drawer(
              child: Container(),
            ),
            backgroundColor: Colors.transparent,
            body: Center(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: _height / 12,
                  ),
                  CircleAvatar(
                    radius: _width < _height ? _width / 4 : _height / 4,
                    backgroundImage: NetworkImage(imgUrl),
                  ),
                  SizedBox(
                    height: _height / 25.0,
                  ),
                  Text(
                    'Janet Weaver',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: _width / 15,
                        color: Colors.white),
                  ),
                  Text(
                    'janet.weaver@reqres.in',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: _width / 20,
                        color: Colors.white),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: _height / 30, left: _width / 8, right: _width / 8),
                    child: Text(
                      "I'm intersted in Moto Bike, I use R15 in Weekends",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: _width / 25,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Divider(
                    height: _height / 30,
                    color: Colors.white,
                  ),
                  Row(
                    children: <Widget>[
                      rowCell(randomNumber, 'POSTS'),
                      rowCell(randomNumber2, 'FOLLOWERS'),
                      rowCell(randomNumber3, 'FOLLOWING'),
                    ],
                  ),
                ],
              ),
            ))
      ],
    );
  }

  Widget rowCell(int count, String type) => Expanded(
          child: Column(
        children: <Widget>[
          Text(
            '$count',
            style: TextStyle(color: Colors.white),
          ),
          Text(type,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.normal))
        ],
      ));
}
