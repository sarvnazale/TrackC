import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build (BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Home Page"),
      ),
      body: const Center(
        child: Text('Hello World'),
      ),
    );
  }
}