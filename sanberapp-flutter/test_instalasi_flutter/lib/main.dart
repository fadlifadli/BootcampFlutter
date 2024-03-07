import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      appBar: AppBar(
        title: Text('Stateless VS StateFull'),
      ),
      body: Center(
        child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {
              counter--;
              // print("Decrement $counter");
              setState(() {});
            },
             icon: Icon(Icons.remove)),
          SizedBox(width: 10),
          Text("Counter : $counter", style: TextStyle(fontSize: 20)),
          SizedBox(width: 10),
          IconButton(
            onPressed: () {
              counter++;
              setState(() {});

              // print("Increment $counter");
            },
            icon: Icon(Icons.add)),
        ],
      ),
    ),
    );
  }
}