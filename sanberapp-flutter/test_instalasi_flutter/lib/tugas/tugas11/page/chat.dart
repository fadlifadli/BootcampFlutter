import 'package:flutter/material.dart';


class Chat extends StatefulWidget {
  @override
  _ChatState createdState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Chat')),
      body: Center(
        child: Text('Chat Screen', style: TextStyle (fontSize: 40)),
        ),
    );
  }
}