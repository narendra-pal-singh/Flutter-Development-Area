import 'package:flutter/material.dart';

//This is MaterialApp layout with AppBar

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: Text('My first App'),
      centerTitle: true,
      backgroundColor: Colors.red[600],
    ),
    body: Center(
      child: Text('hello world!!!',
        style: TextStyle(
            fontSize: 40.0,
            backgroundColor: Colors.green,
            letterSpacing: 3.0,
            fontFamily: 'IndieFlower' //for using different font, put font file into fonts folder as well as update pubspec.yaml file
        ),),
    ),
    floatingActionButton: FloatingActionButton(
      child: Text('Change'),
      onPressed: (){},
      backgroundColor: Colors.green[300],
    ),
  ),
));