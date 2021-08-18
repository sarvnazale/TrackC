import 'package:flutter/material.dart';
//import 'package:projectapp/Models/Telomer.dart';
////import 'package:projectapp/authenticate/authenticate.dart';
//import 'package:provider/provider.dart';
import 'pages/Home.dart';
class Wrapper extends StatelessWidget {
  const Wrapper({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Home();
    //get user info
    //final user = Provider.of<Telomer>(context); 
    
    //if (user == null){
       // return Authenticate();  
    //}
    //else {
      //  return Home();
    //}
    //return Home();
  }
}