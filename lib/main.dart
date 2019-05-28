import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: BallPage(),
    ),
  );
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          leading: Icon(Icons.airplanemode_active),
          backgroundColor: Colors.blue[900],
          title: Text(
            'Country to Visit',
            style: TextStyle(
              fontSize: 20.0,
              fontFamily: 'AlfaSlabOne',
            ),
          ),
        ),
        body: SafeArea(
          child: Ball(),
        ),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 2;

  //this function creates a random number between 1 -5 including 1 and 5
  void updateball() {
    ballNumber = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Image.asset('images/ball$ballNumber.png'),
          ),
          FlatButton(
            onPressed: () {
              setState(() {
                updateball();
                //print('I got pressed');
                //print('Ball number $ballNumber');
              });
            },
            child: Card(
              color: Colors.white,
              //padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: ListTile(
                  title: Center(
                    child: Text(
                      'PRESS TO FLY OUT',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
