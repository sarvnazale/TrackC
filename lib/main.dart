//import 'package:flutter/material.dart';
//import 'package:firebase_core/firebase_core.dart';
//import 'package:firebase_messaging/firebase_messaging.dart';
//import 'package:projectapp/Models/Telomer.dart';
//import 'package:projectapp/services/auth.dart';
import "Wrapper.dart";
//import 'package:projectapp/pages/home.dart';
import 'pages/Info.dart';
import 'pages/Progress.dart';
//import 'package:provider/provider.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<Telomer?>.value(
        catchError: (_,__) => null,
        //initialData: AuthService().user,
        initialData: null,
        value: null,
        //value: AuthService().user,
        child: MaterialApp(
        title: 'TeloME',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        //home: MyHomePage(title: 'TeloMe'),
        home: Wrapper(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedPage = 0;

  final _pageOptions = [
    Home(),
    Progress(),
    Info()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: _pageOptions[selectedPage],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home, size: 30), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.track_changes, size: 30), label: "Progress"),
            BottomNavigationBarItem(icon: Icon(Icons.info, size: 30), label: 'Info'),
          ],
          selectedItemColor: Colors.amber[800],
          elevation: 5.0,
          unselectedItemColor: Colors.green[900],
          currentIndex: selectedPage,
          backgroundColor: Colors.white,
          onTap: (index){
            setState(() {
              selectedPage = index;
            });
          },
        )
    );
  }
}