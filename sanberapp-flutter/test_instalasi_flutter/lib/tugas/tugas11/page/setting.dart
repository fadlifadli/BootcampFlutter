import 'package:flutter/material.dart';


class Setting extends StatefulWidget {
  @override
  _SettingState createdState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Setting')),
      body: Center(
        child: Text('Setting Screen', style: TextStyle (fontSize: 40)),
        ),
    );
  }
}