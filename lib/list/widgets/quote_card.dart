import 'dart:math';

import 'package:flutter/material.dart';

import '../../style.dart';
import 'package:MyFlutterApp/list/classes/quote.dart';

// ignore: must_be_immutable
class QuoteCard extends StatelessWidget {

  //const QuoteCard({  Key key,   }) : super(key: key);

  Quote data;

  QuoteCard(this.data);

  @override
  Widget build(BuildContext context) {

/*
    final List<Color> circleColors = [Colors.red, Colors.blue, Colors.green];
    Color randomColor() {
      return circleColors[new Random().nextInt(2)];
    }
*/

    return Card(
      //color: Colors.amberAccent,
      //color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
      //color: randomColor(),
      color: Colors.amber,
      margin: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(data.quote, style: quoteStyle),
            Text(' - '+data.author, style: authorStyle, textAlign: TextAlign.right)
          ],
        ),
      ),
    );
  }
}
