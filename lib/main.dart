import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(
  MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Ball(),
    ),
  ),
);
class Ball extends StatefulWidget{
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball>{
  int n =1;
  void ballface()
  {setState(() {
    n =Random().nextInt(5)+1;
  });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: ()
              {
                ballface();
              },

              child: Image(
                image: AssetImage('images/ball$n.png'),
              ),
            ),

          ),],
      ),
    );

  }

}