import 'package:flutter/material.dart';
import 'package:test_instalasi_flutter/tugas/tugas10/LoginScreen.dart';
import 'package:test_instalasi_flutter/tugas/tugas13/main_app.dart';
import 'package:shared_preferences/shared_preferences.dart';
// shared_preferences

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super (key:key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

()class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    autoLogin();
    super.initState();
  }

  Future<void> autoLogin() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? userToken = prefs.getString("user-token");
    if (userToken !=null){
      Future.delayed(const Duration(seconds: 3), (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MainApp()),
        );
      });
    } else {
      Future.delayed(const Duration(seconds: 3), (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoginScreen()),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/img/flutter.png"),
            SizedBox(
              height: 15,
            ),
            CircularProgressIndicator()
          ])),
    );
  }
}