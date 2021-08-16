import 'package:flutter/material.dart';

class Progress extends StatelessWidget {
  @override
  Widget build (BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("progress Page"),
      ),
      body: const Center(
        child: Text('progress World'),
      ),
    );
  }
}
