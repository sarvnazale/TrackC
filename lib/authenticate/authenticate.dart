import 'package:flutter/material.dart';
import 'sign_in.dart';
class Authenticate extends StatefulWidget {
  Authenticate ({ Key? key }) : super(key: key);

  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SignIn(),
    );
  }
}