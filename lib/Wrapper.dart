import 'package:flutter/material.dart';
<<<<<<< HEAD
//import 'package:projectapp/Models/Telomer.dart';
////import 'package:projectapp/authenticate/authenticate.dart';
//import 'package:provider/provider.dart';
=======
import 'package:projectapp/Models/Telomer.dart';
import 'package:projectapp/authenticate/authenticate.dart';
import 'package:provider/provider.dart';
>>>>>>> a2393fbd56a52e25b8e9286b0d43de445c917a93
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