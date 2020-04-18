import 'package:flutter/material.dart';

import '../style.dart';
import 'classes/quote.dart';

class ObjectList extends StatefulWidget {
  @override
  _ObjectListState createState() => _ObjectListState();
}

class _ObjectListState extends State<ObjectList> {

  List<Quote> quotes = [
    Quote(quote:'quote 1',author:"author 1"),
    Quote(quote:'quote 2',author:"author 2"),
    Quote(quote:'quote 3',author:"author 3"),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Simple Listing'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        //children: tasks.map((q) => Text('. ${q.quote} - ${q.author}', style: textStyle)).toList(),
        children: quotes.map((q){
          return Text('. ${q.quote} - ${q.author}', style: textStyle);
        }).toList(),
        /*children: <Widget>[
          Text('Item 1'),
          Text('Item 2'),
        ],*/
      ),
    );
  }
}
