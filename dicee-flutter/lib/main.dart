import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        /// no safeZone widget? but it's important to have one
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  /// variable won't be rebuild there
  /// where I put variable matter a lot
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    /// var a; -> dynamic type //mean you can reassign with other types
    /// var a = 10.2; -> double type //mean you can't reassign with other type
    /// dynamic a; -> dynamic type
    /// var a = 4; -> integer by type inference can't reassign with other type
    /// int a = 5; -> define a int only type can't reassign with other types
    /// String a = 'word'; define a string only type can't reassign with other types
    /// and so on...
    // var leftDiceNumber = 5;

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            /// resize image to fit screen and avoid error

            // flex: 2, //if you got two widget in a row it will allow the weight space taken on the widget

            child: FlatButton(
              ///flatbutton have some padding of it own
              /// inside the flutter inspector you can type to find the padding value for knowing what value inside
              onPressed: () {
                /// call the build method to redraw the changes in our app
                /// or our app won't make any changes without it and also,
                /// we need to have our Stateless widget to Stateful
                /// you can't use Hot Reload with stateful widget
                setState(() {
                  changeDiceFace();
//                  for (int i = 0; i < 35; i++) {
//                    print(Random().nextInt(6) + 1);
//                  }
                  //print('Left button get pressed.');
                });
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            /// resize image to fit screen and avoid error

            // flex: 1,
            ///alternative for using Image(image:AssetImage())
            child: FlatButton(
              onPressed: () {
                changeDiceFace();
                //print('Right button get pressed!');
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }

  void changeDiceFace() {
    setState(() {
      rightDiceNumber = Random().nextInt(6) + 1; // by element count zero also
      leftDiceNumber = Random().nextInt(6) + 1;
    });
  }
}
