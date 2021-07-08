import 'package:flutter/material.dart';
import 'Home.dart';
import 'Progress.dart';


class Info extends StatelessWidget {
  @override
  Widget build (BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Info Page"),
      ),
      body: const Center(
        child: Text('Info World'),
      ),
    );
  }
}