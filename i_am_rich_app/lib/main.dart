
import 'package:flutter/material.dart';
//in flutter always put a comma at the end  of a constructor
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor:Colors.blueGrey,// use the scaffold to change the background of the app
        appBar: AppBar(
          title: Text("I Am Rich"),
          backgroundColor: Colors.blueGrey[900],
        ),
       body: Center(//Alt Enter to wrap widget , to have a parent
         child: Image(
           image: AssetImage('images/diamond.png'), //dart convention single quote string
         ),
       ) ,//content of the Scaffold
       // body: Colors.blue[500] ,
      ),
    ),
  );
}


// for app icon: https://appicon.co/
// for circular icon -> res -> left click >new ImageAssest > chose image then resize to fit
//icons8.com/ouch -> royality free asset for apps
// vecteezy.com -> broad varieties of free asset
// canva.com pretty bad but let you use shape to make icon