import 'package:flutter/material.dart';

import '../style.dart';
import 'classes/quote.dart';

class CardList extends StatefulWidget {
  @override
  _CardListState createState() => _CardListState();
}

class _CardListState extends State<CardList> {

  List<Quote> quotes = [
    Quote(quote:'Just do the best you can. No one can do more than that.', author:"John Wooden"),
    Quote(quote:'I am as bad as the worst, but, thank God, I am as good as the best.', author:"Walt Whitman"),
    Quote(quote:'I do the very best I know how - the very best I can; and I mean to keep on doing so until the end.', author:"Abraham Lincoln"),
    Quote(quote: 'I have the simplest tastes. I am always satisfied with the best.', author: 'Oscar Wilde'),
    Quote(quote: 'If a man does his best, what else is there', author: 'George S. Patton')
  ];

  Widget quoteTemplate(q){
    return Card(
      margin: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(q.quote, style: quoteStyle),
            Text(' - '+q.author, style: authorStyle, textAlign: TextAlign.right)
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Card ObjectBase Listing'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: quotes.map((q) => quoteTemplate(q) ).toList(),
      ),
    );
  }
}
