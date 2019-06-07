import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      home: new Home(),
    );
  }
}

class Home extends StatelessWidget {
  Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => new Scaffold(
    appBar: new AppBar(
      title: new Text("View"),
    ),
    body: Container(
      color: Colors.blueAccent,
      child: new Center(
        child: new Container(
          decoration: new BoxDecoration(
            gradient: new LinearGradient(colors:
            [Colors.blue,
            Colors.red,],
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
            ),
          ),
          child: new FlatButton(
              onPressed: () => launch("tel://21213123123"),
              child: new Text("Call me")),
        ),


      ),


           ),
  );
}

void main() {
  runApp(
    new MyApp(),
  );
}