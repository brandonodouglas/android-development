import 'package:flutter/material.dart';

// Use this to make text styles to text specific text widget to make styles/colouring more uniform

void main() => runApp(MaterialApp(home: BrandonCard()));

class BrandonCard extends StatefulWidget {
  @override
  State<BrandonCard> createState() => _BrandonCardState();
}

class _BrandonCardState extends State<BrandonCard> {
  // Data here can now change over time thanks to stateful widget
  // We then need to replace the widget in question with $myCounter
  int myCounter = 0;
  // List of todos
  List<String> todoList = [];

  // for the text field in the todos
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            myCounter += 1;
          });
        },
        child: Text(
          'INCREMENT',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 8),
          maxLines: 1,
        ),
        backgroundColor: const Color.fromARGB(255, 103, 216, 22),
      ),
      // Red AppBar with my name (centered) on it
      // Need to figure out how to center a title on navbar with hamburger icon from nav bar
      appBar: AppBar(
        // Centers the title properly in the app bar without center widget
        centerTitle: true,
        title: Text(
          'S I M P L E - S A L A H.',
          style: TextStyle(
            color: const Color.fromARGB(255, 255, 255, 255),
            fontSize: 20,
            fontFamily: "Helvetica Light Bold",
            fontWeight: FontWeight.w100,
          ),
          textAlign: TextAlign.center,
        ),

        //centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 103, 216, 22),
        iconTheme: IconThemeData(color: Colors.white),

        // Increase toolbar height so that the title text fits within the app
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
                    
                  Text(
                    'As-salamu alaykum',
                    style: TextStyle(
                      fontFamily: "Helvetica Light Bold",
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                   Padding(padding:  EdgeInsets.all(10.0),
                  child: Divider(
                    height: 0,
                    thickness: 0.8,
                    indent: 0,
                    endIndent: 0,

                    color: const Color.fromARGB(255, 192, 187, 187),
                    
                  ),),
                  Center(
                    child: Text(
                      'Made for reverts, by a revert.',
                    ),
                  ),
                  Text(
                    'Click the buttons in the bottom drawer to begin.',
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Text(
                    'Enjoy inshallah,',
                    style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
                  ),
                  Text(
                    '- Brandon.',
                    style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
                  ),
                  Text(
                    'Islamic Prayer Time Table',
                    style: TextStyle(
                      fontFamily: "Helvetica Light Bold",
                      fontWeight: FontWeight.w100,
                      fontSize: 25,
                    ),
                  ),
                  
                  Padding(padding:  EdgeInsets.all(16.0),
                  child: Divider(
                    height: 0,
                    thickness: 0.8,
                    indent: 0,
                    endIndent: 0,

                    color: const Color.fromARGB(255, 192, 187, 187),
                    
                  ),),
                  
                  Text('$myCounter', style: TextStyle(fontSize: 100)),
                  Center(
                    child: Text(
                      'Use the navigation drawer to move to a new screen!',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
    );
  }
}
