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

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateless VS StateFull'),),
      body: Center(
        child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(onPressed: (){}, icon: Icon(Icons.remove)),
          SizedBox(width: 10),
          Text("Counter : 1", style: TextStyle(fontSize: 20)),
          SizedBox(width: 10),
          IconButton(onPressed: () {}, icon: Icon(Icons.add)),
        ],
      ),
    ),
    );
  }
}