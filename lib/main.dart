import 'package:flutter/material.dart';

import 'list/list_4.dart';

void main() => runApp(MaterialApp(
  home: CardWidgetList()
));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    //debugPrint('');
    print('Build Start:=====');
    return Scaffold(
      appBar: AppBar(
      title: Text('My first App'),
      centerTitle: true,
      backgroundColor: Colors.red[600],
      ),
      body: Center(
        child: Text( 'Click the button and start counter = $_counter' ,
        style: TextStyle(
          fontSize: 30.0,
          backgroundColor: Colors.blue,
          letterSpacing: 3.0,
          fontFamily: 'IndieFlower'
          ) )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          setState(() {
            _counter++;
          });
        },
        backgroundColor: Colors.green[300],
      ),
    );
  }
}
