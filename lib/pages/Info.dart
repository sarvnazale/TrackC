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
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [Button1(), Button2()],
      ),
    );
  }
  Widget Button2() {
    return Container(
      width: 343,
      height: 52,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 10,
        left: 10,
        child: Container(
        width: 343,
        height: 52,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(6),
            topRight: Radius.circular(6),
            bottomLeft: Radius.circular(6),
            bottomRight: Radius.circular(6),
          ),
      color : Color.fromRGBO(0, 0, 0, 1),
      border : Border.all(
          color: Color.fromRGBO(0, 0, 0, 1),
          width: 2,
        ),
  )
      )
      ),Positioned(
        top: 19,
        left: 148.28741455078125,
        child: Text('Log in', textAlign: TextAlign.center, style: TextStyle(
        color: Color.fromRGBO(255, 255, 255, 1),
        fontFamily: 'Roboto',
        fontSize: 13,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),
        ]
      )
    );
  }
  Widget Button1() {
    return Container(
    width: 343,
    height: 52,
    child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
            Container(
                width: 343,
                height: 52,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2, ),
                    color: Colors.white,
                ),
                padding: const EdgeInsets.only(left: 17, right: 194, ),
                child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                        Text(
                            "jane@example.com",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                            ),
                        ),
                    ],
                ),
            ),
        ],
    ),
);
  }
 
}






