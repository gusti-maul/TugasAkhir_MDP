import 'package:flutter/material.dart';
import 'package:ta_mdp/profile.dart';

class container250 extends StatefulWidget {
  const container250({Key? key}) : super(key: key);

  @override
  _container250State createState() => _container250State();
}

class _container250State extends State<container250> {
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
                          'assets/images/r25.png',
                          height: 90,
                          width: 100,
                        ),
                        Text("YAMAHA R25",
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
                          'assets/images/cbr250rr.png',
                          height: 90,
                          width: 100,
                        ),
                        Text("HONDA CBR250RR",
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
                          'assets/images/gixxer250sf.png',
                          height: 90,
                          width: 100,
                        ),
                        Text("SUZUKI GIXXER250SF",
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
                          'assets/images/zx25r.png',
                          height: 90,
                          width: 120,
                        ),
                        Text("KAWASAKI ZX25R",
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
