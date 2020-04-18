import 'package:flutter/material.dart';


class Layout1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('Layout 2', textAlign: TextAlign.right, textDirection: TextDirection.rtl ,),

        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body: Row(
        children: <Widget>[
          Expanded(
              flex: 3,
              child: Image.asset('assets/Koala.jpg')
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.cyan,
              padding: EdgeInsets.all(30),
              child: Text('1'),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.pinkAccent,
              padding: EdgeInsets.all(30),
              child: Text('2'),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.amber,
              padding: EdgeInsets.all(30),
              child: Text('3'),
            ),
          )
        ],
      ),
    );
  }

}

