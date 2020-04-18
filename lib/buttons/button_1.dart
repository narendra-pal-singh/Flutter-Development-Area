import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('All Button Type'),),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        //mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FlatButton(
            child: Text('Flat Button',style: TextStyle(fontSize: 20),),
            color: Colors.lightBlue,
            onPressed: (){},
          ),
          RaisedButton(
            child: Text('Raise Button',style: TextStyle(fontSize: 20),), onPressed: () {},
          ),
          RaisedButton.icon(
            onPressed: null,
            icon: Icon(Icons.mail,color: Colors.red,),
            label: Text('RaiseButton Icon'),
            color: Colors.amber,
          ),
          IconButton(
            color: Colors.green,
            icon: Icon(Icons.alternate_email,size: 50,),
            onPressed: () {},
          ),
        ],
      ),


    );
  }

}