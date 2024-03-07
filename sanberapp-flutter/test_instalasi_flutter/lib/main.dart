import 'package:flutter/material.dart';
import 'package:test_instalasi_flutter/tugas/tugas13/live/pages/user_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UserPage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<int> data=[];
  TextEditingController controller = TextEditingController();
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

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