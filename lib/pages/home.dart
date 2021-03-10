import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          'Esense Sport App',
          style: TextStyle(
            letterSpacing: 1.3,
          ),
          ),
        backgroundColor: Colors.grey[700],
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(50.0, 150.0, 50.0, 20.0),
        child: Center(
          child: Column(
            children: [
              Text(
                'WELCOME 👋🏼',
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                  color: Colors.grey[700],
                ),
              ),
              SizedBox(height: 80.0),
              Text(
                'Before you start make sure that your earables are on and connected with your phone!',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 30.0),
              SizedBox(
                height: 60.0,
                width: 250.0,
                child: RaisedButton(
                  padding: EdgeInsets.all(15.0),
                  onPressed: () {
                    Navigator.pushNamed(context, '/connect_earables');
                  },
                  color: Colors.amber,
                  child: Text(
                    'Connect your earables',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30.0),
              SizedBox(
                height: 60.0,
                width: 250.0,
                child: RaisedButton(
                  padding: EdgeInsets.all(15.0),
                  onPressed: () {
                    Navigator.pushNamed(context, '/setup_workout_2');
                  },
                  color: Colors.greenAccent,
                  child: Text(
                    'Setup your Workout!',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
