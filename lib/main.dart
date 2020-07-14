import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/painting.dart';

void main() {

  runApp(Home());

  Firestore.instance
      .collection("col")
      .document("doc")
      .collection("subcol")
      .document("subdoc")
      .updateData({"texto": "augusto lustosa", "read": false, });


}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App de Chat",
      debugShowCheckedModeBanner: false,
      color: Colors.white,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat", style: TextStyle(fontStyle: FontStyle.italic),),
        backgroundColor: Colors.blueAccent,

      ),
      body: Container(
        color: Colors.blueGrey,
      ),
    );
  }
}
