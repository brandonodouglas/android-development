import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: BrandonCard()));

class BrandonCard extends StatefulWidget {
  @override
  State<BrandonCard> createState() => _BrandonCardState();
}
class _BrandonCardState extends State<BrandonCard> {
  // Data here can now change over time thanks to stateful widget
  // We then need to replace the widget in question with $myCounter
  int myCounter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState((){
            myCounter += 1;
          });
        },
        child: Text(
          'INCREMENT',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize:8 ),
          maxLines: 1,
        ),
        backgroundColor: Colors.red,
      ),
      // Red AppBar with my name (centered) on it
      appBar: AppBar(
        title: Center(
          child: Text(
            'Brandon Douglas!',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          children: [
            CircleAvatar(
              radius: 48, // Image radius
              backgroundImage: AssetImage('assets/images/animated_avatar.jpg'),
            ),

            Container(
              child: Column(
                children: [
                  Text('Hey, Welcome to my Android App.'),
                  Text('I hope you enjoy your stay!'),
                  Text('- Brandon.'),
                ],
              ),
            ),
            Container(
              child: Text(
                'You have pressed the button this amount of times',
                style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
              ),
            ),
            Text('$myCounter', style: TextStyle(fontSize: 100)),
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 222, 217, 189),
    );
  }
}
