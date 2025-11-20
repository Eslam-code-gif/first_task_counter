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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
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
        onPressed: changeCounter,
        child: Icon(isIncrement ? Icons.add : Icons.remove),
      ),
    );
  }
}
