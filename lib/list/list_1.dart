import 'package:flutter/material.dart';

import '../style.dart';

class SimpleList extends StatefulWidget {
  @override
  _SimpleListState createState() => _SimpleListState();
}

class _SimpleListState extends State<SimpleList> {

  List<String> tasks = [
    'Design the project',
    'Design the database',
    'Create Mockup',
    'Start Project',
  ];

  @override
  Widget build(BuildContext context) {
    int i=0;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Simple Listing'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        //children: tasks.map((task) => Text(task,style: textStyle,)).toList(),
        children: tasks.map((task){
          i +=1;
          return Text(i.toString()+'. '+task, style: textStyle,);
        }).toList(),
        /*children: <Widget>[
          Text('Item 1'),
          Text('Item 2'),
        ],*/
      ),
    );
  }
}
