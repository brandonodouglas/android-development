import 'package:flutter/material.dart';

// Main Method - where App starts
void main() {
  // runApp method takes in the main class widget as a root widget
  runApp(MyApp());
}

// Stateless widgets - boilerplate code
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // Example of changing the background colour
  // What is home and scaffold
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 231, 165, 213),

        appBar: AppBar(
          title: const Text('Brandons First App'),
          centerTitle: true,
        ),
        // Align  the widgets in the body to the center please
        body: Align(
          alignment: Alignment.center,
          child: Text('Hello World!'),
        ),
      ),
    );
  }

  
}
