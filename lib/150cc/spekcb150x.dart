import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ta_mdp/150cc/list.dart';

void main() {
  runApp(spekcb150x());
}

class spekcb150x extends StatefulWidget {
  const spekcb150x({Key? key}) : super(key: key);

  @override
  _spekcb150xState createState() => _spekcb150xState();
}

class _spekcb150xState extends State<spekcb150x> {
  int _current = 0;

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: new Text(" "),
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
              //bagian berita terkini
              Padding(
                padding: EdgeInsets.only(left: 16, bottom: 12),
                child: Text("HONDA CB150X",
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
                          itemCount: carouselscb150x.length,
                          itemBuilder: (BuildContext context, index) {
                            return Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: AssetImage(
                                      carouselscb150x[index].image,
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
                          children:
                              map<Widget>(carouselscb150x, (index, image) {
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
              Padding(
                padding: EdgeInsets.only(left: 16, bottom: 12, top: 16),
                child: Text("SPECIFICATION",
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
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(right: 8),
                            padding: EdgeInsets.only(left: 16),
                            height: 64,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              border:
                                  Border.all(color: Colors.white38, width: 1),
                            ),
                            child: Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(left: 16),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text('Producent',
                                          style: GoogleFonts.inter(
                                              fontWeight: FontWeight.w400,
                                              color: Colors.blueGrey,
                                              fontSize: 12)),
                                      Text('HONDA',
                                          style: GoogleFonts.inter(
                                              fontWeight: FontWeight.w600,
                                              color: Colors.blueGrey,
                                              fontSize: 18))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(right: 8),
                            padding: EdgeInsets.only(left: 16),
                            height: 64,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              border:
                                  Border.all(color: Colors.white38, width: 1),
                            ),
                            child: Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(left: 16),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text('Type',
                                          style: GoogleFonts.inter(
                                              fontWeight: FontWeight.w400,
                                              color: Colors.blueGrey,
                                              fontSize: 12)),
                                      Text('Adventure',
                                          style: GoogleFonts.inter(
                                              fontWeight: FontWeight.w600,
                                              color: Colors.blueGrey,
                                              fontSize: 18))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(right: 8),
                            padding: EdgeInsets.only(left: 16),
                            height: 64,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              border:
                                  Border.all(color: Colors.white38, width: 1),
                            ),
                            child: Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(left: 16),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text('Displacement',
                                          style: GoogleFonts.inter(
                                              fontWeight: FontWeight.w400,
                                              color: Colors.blueGrey,
                                              fontSize: 12)),
                                      Text('150 cc',
                                          style: GoogleFonts.inter(
                                              fontWeight: FontWeight.w600,
                                              color: Colors.blueGrey,
                                              fontSize: 18))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(right: 8),
                            padding: EdgeInsets.only(left: 16),
                            height: 64,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              border:
                                  Border.all(color: Colors.white38, width: 1),
                            ),
                            child: Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(left: 16),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text('Compresion Ratio',
                                          style: GoogleFonts.inter(
                                              fontWeight: FontWeight.w400,
                                              color: Colors.blueGrey,
                                              fontSize: 12)),
                                      Text('11,3 : 1',
                                          style: GoogleFonts.inter(
                                              fontWeight: FontWeight.w600,
                                              color: Colors.blueGrey,
                                              fontSize: 18))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
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
