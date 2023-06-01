import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:ta_mdp/profileUser/userdetail.dart';
import 'package:ta_mdp/profileUser/userdetail1.dart';
import 'package:ta_mdp/profileUser/userdetail2.dart';
import 'package:ta_mdp/profileUser/userdetail3.dart';
import 'package:ta_mdp/profileUser/userdetail4.dart';
import 'package:ta_mdp/profileUser/userdetail5.dart';

void main() {
  runApp(MaterialApp(
    home: GetData(),
  ));
}

class GetData extends StatelessWidget {
  final List<Widget> _children = [
    UserDetail(),
    UserDetail1(),
    UserDetail2(),
    UserDetail3(),
    UserDetail5(),
    UserDetail6()
  ];

  final String apiUrl = "https://reqres.in/api/users?per_pages=5";

  Future<List<dynamic>> _fecthDataUsers() async {
    var result = await http.get(Uri.parse(apiUrl));
    return json.decode(result.body)['data'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('APP USER',
            style: GoogleFonts.inter(
                fontWeight: FontWeight.w900,
                color: Colors.white,
                fontSize: 16)),
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.blueGrey, Colors.white, Colors.white])),
        child: FutureBuilder<List<dynamic>>(
          future: _fecthDataUsers(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  padding: EdgeInsets.all(10),
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 30,
                          backgroundImage:
                              NetworkImage(snapshot.data[index]['avatar']),
                        ),
                        title: Text(snapshot.data[index]['first_name'] +
                            " " +
                            snapshot.data[index]['last_name']),
                        subtitle: Text(snapshot.data[index]['email']),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => _children[index]),
                        );
                      },
                    );
                  });
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}
