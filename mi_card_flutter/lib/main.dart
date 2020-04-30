import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          ///very important safe area for moving thing to the user view and not the notification or notch area of the device
          child: Column(
            ///axisAlignment to center widget

            mainAxisAlignment: MainAxisAlignment.center,

            children: <Widget>[
              /// Ctrl + Q to see documentation
              CircleAvatar(
                backgroundImage: AssetImage('images/leaves.png'),
                radius: 50.0,
              ),
              Text(
                'Leaves Many',
                style: TextStyle(
                  ///fonts.google.com //also need to restart app for fonts
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico',
                ),
              ),
              Text('FLUTTER DEVELOPER',
                  style: TextStyle(
                    color: Colors.teal.shade100,
                    fontFamily: 'SourceSansPro',
                    fontSize: 20.0,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  ///create a material divider
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                ///container takes up all the space available unless there a child

                ///padding is to add space into the widget interior
                // padding: EdgeInsets.all(10.0),

                ///margin put spaces between object , no need for SizedBox in this case
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  title: Text(
                    '+44 123 456 789',
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'SourceSansPro',
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              Card(
                ///container takes up all the space available unless there a child

                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title: Text(
                    'leaves_many@email.com',
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'SourceSansPro',
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//ctrl s (hot reload)
