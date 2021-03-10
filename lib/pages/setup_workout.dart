import 'package:flutter/material.dart';
//import 'exercise.dart';

class SetupWorkout extends StatefulWidget {
  @override
  _SetupWorkoutState createState() => _SetupWorkoutState();
}

class _SetupWorkoutState extends State<SetupWorkout> {

  List<String> exercises = [

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[500],
        title: Text('Setup your Workout!'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text(
                  'Create the Workout that fits you!',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.greenAccent[700],
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  'Workout Elements :',
                  style: TextStyle(
                    fontSize: 14.0,
                    letterSpacing: 1.5,
                    color: Colors.grey,
                  ),
                ),
              ]
            ),
            Column(
              children: [
                Container(
                  height: 80.0,
                  width: 350.0,
                  child: Card(
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: 15.0),
                        Text('Squats'),
                        const SizedBox(width: 10.0),
                        TextButton(
                          child: const Text('DELETE'),
                          onPressed: () { /* ... */ },
                        ),
                        const SizedBox(width: 8),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 80.0,
                  width: 350.0,
                  child: Card(
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: 15.0),
                        Text('Push-ups'),
                        const SizedBox(width: 10.0),
                        TextButton(
                          child: const Text('DELETE'),
                          onPressed: () { /* ... */ },
                        ),
                        const SizedBox(width: 8),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 80.0,
                  width: 350.0,
                  child: Card(
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: 15.0),
                        Text('Jumps'),
                        const SizedBox(width: 10.0),
                        TextButton(
                          child: const Text('DELETE'),
                          onPressed: () { /* ... */ },
                        ),
                        const SizedBox(width: 8),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 80.0,
                  width: 350.0,
                  child: Card(
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: 15.0),
                        Text('Sit-ups'),
                        const SizedBox(width: 10.0),
                        TextButton(
                          child: const Text('DELETE'),
                          onPressed: () { /* ... */ },
                        ),
                        const SizedBox(width: 8),
                      ],
                    ),
                  ),
                ),
                  ],
                ),
            RaisedButton(
              onPressed: () {},
              child: Text(
                'Start Workout',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              color: Colors.greenAccent,
            )
          ],
        ),
      ),
    );
  }
}
