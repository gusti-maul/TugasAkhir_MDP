import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(beritaKetiga());
}

class beritaKetiga extends StatefulWidget {
  const beritaKetiga({Key? key}) : super(key: key);

  @override
  _beritaKetigaState createState() => _beritaKetigaState();
}

class _beritaKetigaState extends State<beritaKetiga> {
  late WebViewController controller;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
                child: WebView(
                    initialUrl:
                        'https://otomotifnet.gridoto.com/read/232991240/suzuki-gixxer-sf-250-resmi-dipamerkan-ini-detail-fitur-andalannya',
                    javascriptMode: JavascriptMode.unrestricted,
                    onWebViewCreated: (WebViewController wc) {
                      controller = wc;
                    }))));
  }
}
