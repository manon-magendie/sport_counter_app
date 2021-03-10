import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mc_sport_counter/pages/home.dart';
import 'package:mc_sport_counter/pages/connect_earables.dart';
import 'package:mc_sport_counter/pages/setup_workout_2.dart';
import 'package:mc_sport_counter/pages/setup_workout.dart';
import 'package:mc_sport_counter/pages/workout.dart';


void main() => runApp(MaterialApp(
  initialRoute: '/home',
  routes: {
    '/home': (context) => Home(),
    '/connect_earables': (context) => ConnectEarables(),
    '/setup_workout_2': (context) => SetupWorkout2(),
    '/workout': (context) => Workout(),

  },
));
