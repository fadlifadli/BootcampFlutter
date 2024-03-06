import 'package:flutter/material.dart';

class Logout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Logout',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600
          ),
        ),)
    );
  }
}