import 'package:flutter/material.dart';
import 'package:mc_sport_counter/pages/exercise.dart';
import 'package:mc_sport_counter/exercise_card.dart';

class SetupWorkout2 extends StatefulWidget {
  @override
  _SetupWorkout2State createState() => _SetupWorkout2State();
}

class _SetupWorkout2State extends State<SetupWorkout2> {

  /*
  List exercises = [
    Exercise(name: 'Squats :', totalRepetitions: 20),
    Exercise(name: 'Push-ups :', totalRepetitions: 20),
    Exercise(name: 'Crunches :', totalRepetitions: 10),
    Exercise(name: 'Jumping-jacks :', totalRepetitions: 10),
  ]; */

  List exercises = [
    Exercise('Squats'),
    Exercise('Push-ups'), 
    Exercise('Crunches'), 
    Exercise('Jumping-jacks'),
  ];

  List repetitions = [];
 

/*
  var exercises = [
    {'name': 'Squats', 'totalRepetitions': 10}, // chaque { } est une Map
    {'name': 'Push-ups', 'totalRepetitions': 20},
    {'name': 'Crunches', 'totalRepetitions': 10},
    {'name': 'Jumping-jacks', 'totalRepetitions': 10},
  ];
  */



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[500],
        title: Text('Setup your Workout!'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  SizedBox(height: 40.0),
                  Text(
                    'Create the Workout that fits you!',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.greenAccent[700],
                    ),
                  ),
                  SizedBox(height: 15.0),
                  Text(
                    'Workout Elements :',
                    style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1.5,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.0),
              Column(
                children:
                    //exercises.map((ex) => Text(ex)).toList(),
                    // with named parameters
                    exercises.map((exerciseElement) => ExerciseCard(exercise: exerciseElement)).toList(),
              ),
              SizedBox(height: 60.0),
              RaisedButton(
                padding: EdgeInsets.all(15.0),
                onPressed: () {
                  Navigator.pushNamed(context, '/workout');
                },
                color: Colors.greenAccent,
                child: Text(
                  'Start Workout',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }
}

/* DELETE FUNCTION :

 exercises.map((ex) => ExerciseCard(
                  ex: ex,
                  delete: () {
                    setState(() {
                      exercises.remove(ex);
                    });
                  }
                )).toList(),

*/
