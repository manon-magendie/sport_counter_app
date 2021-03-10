import 'package:flutter/material.dart';
import 'package:mc_sport_counter/pages/exercise.dart';

class ExerciseCard extends StatefulWidget {

  final Exercise exercise;
  final Function delete;
  ExerciseCard({ this.exercise, this.delete });

  @override
  _ExerciseCardState createState() => _ExerciseCardState();
}

class _ExerciseCardState extends State<ExerciseCard> {

  final controller = TextEditingController();
  String text = '';

  // cleaning up the object once its done.
  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  void changeText(text) {
    setState(() {
      this.text = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400.0,
      child: Card(
        margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(18.0, 5.0, 18.0, 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                widget.exercise.name,
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              Form(
                child: SizedBox(
                  width: 100.0,
                  child: TextFormField(
                    //initialValue: '20',
                    controller: this.controller,
                    decoration: InputDecoration(
                      //hintText: '${widget.exercise.totalRepetitions}',
                      labelText: 'Repetitions',
                      labelStyle: TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                    keyboardType: TextInputType.number,
                    onChanged: (text) => this.changeText(text),
                  ),
                ),
                  //keyboardType: TextInputType.number,
              ),
              Text(this.text),
            ],
          ),
        ),
      ),
    );
  }
}


// exercises.map((element) => Text('${element.exercise} - ${element.totalRepetitions}')).toList(),

/* DELETE FUNCTION
* TextButton(
              child: const Text('DELETE'),
              onPressed: delete,
* */