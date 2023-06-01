import 'package:flutter/material.dart';
import 'package:ta_mdp/profile.dart';

class container600 extends StatefulWidget {
  const container600({Key? key}) : super(key: key);

  @override
  _container600State createState() => _container600State();
}

class _container600State extends State<container600> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text(" "),
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [Colors.blueGrey, Colors.white, Colors.grey])),
        padding: EdgeInsets.all(30.0),
        child: GridView.count(crossAxisCount: 2, children: <Widget>[
          Card(
            margin: EdgeInsets.all(12.0),
            color: Colors.grey[100],
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
              },
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/r6.png',
                          height: 90,
                          width: 100,
                        ),
                        Text("YAMAHA R6",
                            style:
                                TextStyle(fontSize: 12.0, color: Colors.black)),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.all(12.0),
            color: Colors.grey[100],
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
              },
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/cbr600rr.png',
                          height: 90,
                          width: 110,
                        ),
                        Text("HONDA CBR600RR",
                            style:
                                TextStyle(fontSize: 12.0, color: Colors.black)),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.all(12.0),
            color: Colors.grey[100],
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
              },
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/zx636.png',
                          height: 90,
                          width: 120,
                        ),
                        Text("KAWASAKI ZX6R 636",
                            style:
                                TextStyle(fontSize: 12.0, color: Colors.black)),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
