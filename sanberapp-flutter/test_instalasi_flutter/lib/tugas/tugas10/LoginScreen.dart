import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              margin: const EdgeInsets.only(top:40),
              child: Text("Sanber Flutter FADHLI",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w500,
                  fontSize:30
                  ),
                  ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("assets/img/flutter.png",
              height: 100,
              width: 100,
              ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller:nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Username"
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller:nameController,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Password"
                  ),
                ),
              ),
              TextButton(onPressed:(){

              },
              child: Text("Forgot Password"),
              ),
              Container(
                height: 50,
                padding: EdgeInsets.fromLTRB(10,0,10,0),
                child: ElevatedButton(
                  style: raisedButtonStyle,
                  child: Text("Login"),
                  onPressed:(){

                  }
                )
              )
          ],
          )
        ),
    );
  }
}

final ButtonStyle raisedButtonStyle= ElevatedButton.styleFrom(
  // onPrimary:Colors.grey[300],
  // primary: Colors.blue[300],
  minimumSize: Size(88, 36),
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(6)),
  ),
);