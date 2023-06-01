import 'package:flutter/material.dart';
import 'package:ta_mdp/profile.dart';

class container1000 extends StatefulWidget {
  const container1000({Key? key}) : super(key: key);

  @override
  _container1000State createState() => _container1000State();
}

class _container1000State extends State<container1000> {
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
                          'assets/images/r1m.png',
                          height: 90,
                          width: 100,
                        ),
                        Text("YAMAHA R1M",
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
                          'assets/images/cbr1000rr-r.png',
                          height: 90,
                          width: 100,
                        ),
                        Text("HONDA CBR1000RR-R",
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
                          'assets/images/h2.png',
                          height: 90,
                          width: 100,
                        ),
                        Text("KAWASAKI H2",
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
