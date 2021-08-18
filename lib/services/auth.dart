import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:projectapp/Models/Telomer.dart';
class AuthService{
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //create user object based on FirebaseUser
  Telomer? _userfromFirebaseUser(User user) {
    return user != null ? Telomer(uid: user.uid) : null;

  }

  //auth change user stream https://www.youtube.com/watch?v=LkpPEYuqbIY&ab_channel=TheNetNinja
  Stream<Telomer?> get user {
    return _auth
        .authStateChanges()
        .map((User? user) => _userfromFirebaseUser(user!));
  }


  //sign in with email and password

  //register with email and password

  // sign out 
    // sign out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

}