import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: JohannasHomePage(),
    );
  }
}

class JohannasHomePage extends StatefulWidget {
  @override
  _JohannasHomePageState createState() => _JohannasHomePageState();
}

class _JohannasHomePageState extends State<JohannasHomePage> {
  @override
  Widget build(BuildContext context) {
    //Hier werden die UI Elemente eingefuegt
    return Scaffold(
      appBar: AppBar(
        title: Text('Das ist meine Seite'),
      ),
      body: Column(
        children: <Widget>[
          makeRow("Name:", "Johanna"),
          makeRow("Alter: ", "22"),
          makeRow("Fun:", "No"),
      ],
      ),
    );
  }


  Widget makeRow(attribut, wert) {
    return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              attribut,
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            Text(
              wert,
              style: TextStyle(
                  fontSize: 30
              ),
            ),
          ],
        );
  }
}
