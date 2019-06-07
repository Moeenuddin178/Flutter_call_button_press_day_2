import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

//stateless widget :widget with having no state and remain same in thier whole life cycle 
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
    body: InkWell(
      child: new FlatButton(
          onPressed: () => launch("tel://21213123123"),
          child: new Text("Call me")),
      splashColor: Colors.amberAccent,
    ),
  );
}

void main() {
  runApp(
    new MyApp(),
  );
}
