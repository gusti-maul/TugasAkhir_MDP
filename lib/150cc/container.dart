import 'package:flutter/material.dart';
import 'package:ta_mdp/150cc/spekcb150x.dart';
import 'package:ta_mdp/150cc/spekcbr150r.dart';
import 'package:ta_mdp/150cc/spekgsxr150.dart';
import 'package:ta_mdp/150cc/spekr15.dart';

class container150 extends StatefulWidget {
  const container150({Key? key}) : super(key: key);

  @override
  _container150State createState() => _container150State();
}

class _container150State extends State<container150> {
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
                  MaterialPageRoute(builder: (context) => spekr15()),
                );
              },
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/r15.png',
                          height: 90,
                          width: 90,
                        ),
                        Text("YAMAHA R15",
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
                  MaterialPageRoute(builder: (context) => spekcbr150r()),
                );
              },
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/cbr150r.png',
                          height: 90,
                          width: 90,
                        ),
                        Text("HONDA CBR150R",
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
                  MaterialPageRoute(builder: (context) => spekgsxr150()),
                );
              },
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/gsxr150.png',
                          height: 100,
                          width: 120,
                        ),
                        Text("SUZUKI GSX-R150",
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
                  MaterialPageRoute(builder: (context) => spekcb150x()),
                );
              },
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/cb150x.png',
                          height: 100,
                          width: 110,
                        ),
                        Text("HONDA CB150X",
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
