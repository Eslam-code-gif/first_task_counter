import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counter = 0;
  bool isIncrement = true;

  void changeCounter() {
    setState(() {
      if (counter >= 20) {
        isIncrement = false;
      } else if (counter <= -20) {
        isIncrement = true;
    }
    if (isIncrement) {
        counter++;
      } else {
        counter--;
      }
  });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Counter"),
      ),
      body: Center(
        child: Text('$counter',
        style: TextStyle(
          fontSize: 40,
        ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        onPressed: changeCounter,
        child: Icon(isIncrement ? Icons.add : Icons.remove),
      ),
    );
  }
}
