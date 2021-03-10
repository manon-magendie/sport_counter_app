import 'package:flutter/material.dart';

class Workout extends StatefulWidget {

  @override
  _WorkoutState createState() => _WorkoutState();
}

class _WorkoutState extends State<Workout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen[400],
        automaticallyImplyLeading: false,
        title: Text('Workout Session'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text('ÜBUNG:'),
          Text('squats'),
          Column(
            children: [
              Text(
                '2',
                style: TextStyle(
                  fontSize: 60.0,
                ),
              ),
              Text(
                '20',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.grey[800],
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.popUntil(context, ModalRoute.withName('/home'));
                },
                child: Text(
                  'Quit Workout',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
