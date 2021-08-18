import 'package:flutter/material.dart';
import  'package:projectapp/services/auth.dart';

//class Home extends StatelessWidget {
//   @override
//   Widget build (BuildContext ctxt) {
//     return new Scaffold(
//       appBar: new AppBar(
//         title: new Text("Home Page"),
//       ),
//       body: const Center(
//         child: Text('Hello World'),
//       ),
//     );
//   }
// }


class Home extends StatelessWidget {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.brown[50],
        appBar: AppBar(
          title: Text('Home Page'),
          backgroundColor: Colors.brown[400],
          elevation: 0.0,
          actions: <Widget>[
            TextButton.icon(
              icon: Icon(Icons.person),
              label: Text('logout'),
              onPressed: () async {
                await _auth.signOut();
              },
            ),
          ],
        ),
      ),
    );
  }
}