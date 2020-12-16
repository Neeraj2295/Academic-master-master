import "package:flutter/material.dart";

import "package:youtube_player_flutter/youtube_player_flutter.dart";
import 'package:webview_flutter/webview_flutter.dart';

class Aktuerp extends StatefulWidget {
  String link, bar;
  Aktuerp({@required this.link, @required this.bar});
  @override
  _AktuerpState createState() => _AktuerpState();
}

class _AktuerpState extends State<Aktuerp> {
  @override

  //https://erp.aktu.ac.in/WebPages/OneView/OneView.aspx
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          )),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(widget.bar, style: TextStyle(fontFamily: "Dancing")),
      ),
      body: WebView(
        initialUrl: widget.link,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}

//previous year question paper...

class Privacy extends StatefulWidget {
  @override
  _PrivacyState createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title:
              Text("Privacy policy", style: TextStyle(fontFamily: "Dancing")),
        ),
        body: WebView(
          initialUrl: "https://academic-master.flycricket.io/privacy.html",
          javascriptMode: JavascriptMode.unrestricted,
        ));
  }
}
