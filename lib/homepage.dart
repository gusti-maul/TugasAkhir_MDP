import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ta_mdp/1000cc/container.dart';
import 'package:ta_mdp/150cc/container.dart';
import 'package:ta_mdp/250cc/container.dart';
import 'package:ta_mdp/600cc/container.dart';
import 'package:ta_mdp/berita/berita1.dart';
import 'package:ta_mdp/berita/berita2.dart';
import 'package:ta_mdp/berita/berita3.dart';
import 'package:ta_mdp/list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _current = 0;
  int _current1 = 0;
  final List<Widget> _children = [
    beritaPertama(),
    beritaKedua(),
    beritaKetiga()
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  void onTappedBar(int index) {
    setState(() {
      _current = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: new Text("Moto Catalog 🏍️",
            style: TextStyle(
                color: Colors.white, fontFamily: 'Pacifico', fontSize: 24)),
        elevation: 0,
      ),
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.blueGrey, Colors.white, Colors.white])),
          child: ListView(
            physics: ClampingScrollPhysics(),
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 16, bottom: 18),
                child: Text("Hi, Gusti 🤘 Let's Ride the Motorbike!",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        color: Colors.white54,
                        fontSize: 16)),
              ),
              //bagian berita terkini
              Padding(
                padding: EdgeInsets.only(left: 16, bottom: 12),
                child: Text("LATEST NEWS ....",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w900,
                        color: Colors.blue[900],
                        fontSize: 16)),
              ),

              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 16, right: 16),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    InkWell(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 190,
                        child: Swiper(
                          onIndexChanged: (index) {
                            setState(() {
                              _current = index;
                            });
                          },
                          autoplay: true,
                          layout: SwiperLayout.DEFAULT,
                          itemCount: carousels.length,
                          itemBuilder: (BuildContext context, index) {
                            return Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: AssetImage(
                                      carousels[index].image,
                                    ),
                                    fit: BoxFit.cover),
                              ),
                            );
                          },
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => _children[_current]),
                        );
                      },
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: map<Widget>(carousels, (index, image) {
                            return Container(
                              alignment: Alignment.centerLeft,
                              height: 6,
                              width: 6,
                              margin: EdgeInsets.only(right: 8),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: _current == index
                                      ? Colors.blueAccent
                                      : Colors.blueGrey),
                            );
                          }),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              //bagian pilihan engine
              Padding(
                padding: EdgeInsets.only(left: 16, bottom: 12, top: 16),
                child: Text("CHOOSE BY ENGINE",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w900,
                        color: Colors.blue[900],
                        fontSize: 16)),
              ),
              Container(
                height: 144,
                margin: EdgeInsets.only(left: 16, right: 16),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        InkWell(
                          child: Container(
                            margin: EdgeInsets.only(right: 24),
                            padding: EdgeInsets.only(left: 18),
                            height: 64,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              border:
                                  Border.all(color: Colors.white38, width: 1),
                            ),
                            child: Row(
                              children: <Widget>[
                                Image.asset(
                                  'assets/icons/pistons.png',
                                  height: 32,
                                  width: 32,
                                  fit: BoxFit.contain,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 16),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text('150 cc',
                                          style: GoogleFonts.inter(
                                              fontWeight: FontWeight.w600,
                                              color: Colors.blueGrey,
                                              fontSize: 24))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => container150()),
                            );
                          },
                        ),
                        InkWell(
                          child: Container(
                            margin: EdgeInsets.only(right: 14),
                            padding: EdgeInsets.only(left: 24),
                            height: 64,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              border:
                                  Border.all(color: Colors.white38, width: 1),
                            ),
                            child: Row(
                              children: <Widget>[
                                Image.asset(
                                  'assets/icons/pistons.png',
                                  height: 32,
                                  width: 32,
                                  fit: BoxFit.contain,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 16),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text('250 cc',
                                          style: GoogleFonts.inter(
                                              fontWeight: FontWeight.w600,
                                              color: Colors.blueGrey,
                                              fontSize: 24))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => container250()),
                            );
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        InkWell(
                          child: Container(
                            margin: EdgeInsets.only(right: 22),
                            padding: EdgeInsets.only(left: 18),
                            height: 64,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              border:
                                  Border.all(color: Colors.white38, width: 1),
                            ),
                            child: Row(
                              children: <Widget>[
                                Image.asset(
                                  'assets/icons/pistons.png',
                                  height: 32,
                                  width: 32,
                                  fit: BoxFit.contain,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 16),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text('600 cc',
                                          style: GoogleFonts.inter(
                                              fontWeight: FontWeight.w600,
                                              color: Colors.blueGrey,
                                              fontSize: 24))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => container600()),
                            );
                          },
                        ),
                        InkWell(
                          child: Container(
                            margin: EdgeInsets.only(right: 14),
                            padding: EdgeInsets.only(left: 22),
                            height: 64,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              border:
                                  Border.all(color: Colors.white38, width: 1),
                            ),
                            child: Row(
                              children: <Widget>[
                                Image.asset(
                                  'assets/icons/pistons.png',
                                  height: 32,
                                  width: 32,
                                  fit: BoxFit.contain,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 16),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text('1000 cc',
                                          style: GoogleFonts.inter(
                                              fontWeight: FontWeight.w600,
                                              color: Colors.blueGrey,
                                              fontSize: 24))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => container1000()),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              //bagian galeri
              Padding(
                padding: EdgeInsets.only(left: 16, bottom: 12),
                child: Text("HOT BIKE GALLERY",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w900,
                        color: Colors.blue[900],
                        fontSize: 16)),
              ),

              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 16, right: 16),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    InkWell(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 190,
                        child: Swiper(
                          onIndexChanged: (index) {
                            setState(() {
                              _current1 = index;
                            });
                          },
                          autoplay: true,
                          layout: SwiperLayout.DEFAULT,
                          itemCount: carousels1.length,
                          itemBuilder: (BuildContext context, index) {
                            return Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: AssetImage(
                                      carousels1[index].image,
                                    ),
                                    fit: BoxFit.cover),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: map<Widget>(carousels1, (index, image) {
                            return Container(
                              alignment: Alignment.centerLeft,
                              height: 6,
                              width: 6,
                              margin: EdgeInsets.only(right: 8),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: _current1 == index
                                      ? Colors.blueAccent
                                      : Colors.blueGrey),
                            );
                          }),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
