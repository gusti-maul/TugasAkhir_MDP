import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(beritaKedua());
}

class beritaKedua extends StatefulWidget {
  const beritaKedua({Key? key}) : super(key: key);

  @override
  _beritaKeduaState createState() => _beritaKeduaState();
}

class _beritaKeduaState extends State<beritaKedua> {
  late WebViewController controller;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
                child: WebView(
                    initialUrl:
                        'https://www.liputan6.com/otomotif/read/4709067/honda-cb150x-gebrak-pasar-indonesia-segini-kisaran-harganya',
                    javascriptMode: JavascriptMode.unrestricted,
                    onWebViewCreated: (WebViewController wc) {
                      controller = wc;
                    }))));
  }
}
