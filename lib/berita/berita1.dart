import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(beritaPertama());
}

class beritaPertama extends StatefulWidget {
  const beritaPertama({Key? key}) : super(key: key);

  @override
  _beritaPertamaState createState() => _beritaPertamaState();
}

class _beritaPertamaState extends State<beritaPertama> {
  late WebViewController controller;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
                child: WebView(
                    initialUrl:
                        'https://oto.detik.com/event/d-5776532/cuma-ada-dua-merek-motor-ikutan-giias-2021',
                    javascriptMode: JavascriptMode.unrestricted,
                    onWebViewCreated: (WebViewController wc) {
                      controller = wc;
                    }))));
  }
}
