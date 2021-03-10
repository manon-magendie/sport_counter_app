import 'package:flutter/material.dart';

class ConnectEarables extends StatefulWidget {
  @override
  _ConnectEarablesState createState() => _ConnectEarablesState();
}

class _ConnectEarablesState extends State<ConnectEarables> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[500],
        title: Text('Connect your Earables'),
        centerTitle: true,
      ),
      body: Text('connect your Earables here!')
    );
  }
}
