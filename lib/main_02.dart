import 'package:flutter/material.dart';


//This is Stateless Example In which  can not change text or counter while clicking action button

void main() => runApp(MaterialApp(
    home: Home()
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('My first App'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Center(
        child: Text( 'Hello, World' ,
          style: TextStyle(
              fontSize: 40.0,
              backgroundColor: Colors.blue,
              letterSpacing: 3.0,
              fontFamily: 'IndieFlower'
          ),),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('Change'),
        onPressed: (){},
        backgroundColor: Colors.green[300],
      ),
    );
  }
}
