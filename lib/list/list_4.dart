
import 'package:flutter/material.dart';

import 'classes/quote.dart';
import 'package:MyFlutterApp/list/widgets/quote_card.dart';

class CardWidgetList extends StatefulWidget {
  @override
  _CardWidgetListState createState() => _CardWidgetListState();
}

class _CardWidgetListState extends State<CardWidgetList> {

  List<Quote> quotes = [
    Quote(quote:'Just do the best you can. No one can do more than that.', author:"John Wooden"),
    Quote(quote:'I am as bad as the worst, but, thank God, I am as good as the best.', author:"Walt Whitman"),
    Quote(quote:'I do the very best I know how - the very best I can; and I mean to keep on doing so until the end.', author:"Abraham Lincoln"),
    Quote(quote: 'I have the simplest tastes. I am always satisfied with the best.', author: 'Oscar Wilde'),
    Quote(quote: 'If a man does his best, what else is there', author: 'George S. Patton'),
  ];

  /*Widget quoteTemplate(quote){
    return QuoteCard(quote);
  }*/

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Card Widget Listing'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: quotes.map((q) => QuoteCard(q) ).toList(),
      ),
    );
  }
}