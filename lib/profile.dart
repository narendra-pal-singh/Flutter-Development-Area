import 'package:MyFlutterApp/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Kate'),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/kate.jpg'),
                radius: 60.0,
              ),
            ),
            Divider(
              height: 60.0,
                color: Colors.grey[800],
            ),
            Text('NAME', style: label_1,),
            SizedBox(height: 10.0,),
            Text('Kate Winslet', style: textStyle,),
            SizedBox(height: 30.0,),
            Text('CURRENT KATE LEVEL', style: label_1,),
            Text('8', style: textStyle,),
            SizedBox(height: 30.0,),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0,),
                Text('kate.winslet@gmail.com',style: emailStyle,)
              ],
            )

          ],
        ),
      ),
    );
  }

}

/*class ProfileEdit extends StatefulWidget {
  @override
  _ProfileEditState createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}*/


//class ProfileEdit extends StatefulWidget {
//  @override
//  State<StatefulWidget> createState() {
//    return null;
//  }
//}