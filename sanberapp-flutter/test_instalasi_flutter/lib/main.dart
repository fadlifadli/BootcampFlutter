import 'package:flutter/material.dart';
// import 'package:test_instalasi_flutter/tugas/tugas11/home.dart';
import 'package:test_instalasi_flutter/tugas/tugas11/profile.dart';
import 'package:test_instalasi_flutter/tugas/tugas11/home2.dart';
import 'package:test_instalasi_flutter/tugas/tugas11/setting.dart';


void main() => runApp (MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState () => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index =0;
  List<Widget> list= [
    Home2(),
    Profile(),
    Setting(),

  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 57, 5, 146)),
        useMaterial3: true,
      ),
      // home: Home(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Navigation Drawer"),
        ),
        body: list[index],
        drawer: MyDrawer(onTap: (ctx,i){
          setState(() {
            index=i;
            Navigator.pop(ctx);
          });

        },
        ),
      )
    );
  }
}


class MyDrawer extends StatelessWidget {
  
  final Function onTap;
  
  MyDrawer({
    this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.8,
      child: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Padding(
                padding: EdgeInsets.all(6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      width: 60,
                      height: 60,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('img/Fadhli.jpg'),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text(
                      'M.Fadhli Azhari C',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white
                      )
                    ),
                    SizedBox(height: 3,),
                    Text(
                      'fadli.azhari.elka@gmail.com',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12
                      )
                    )
                  ],
                ),
              ),

            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: ()=>onTap(context,0),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: ()=>onTap(context,1),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Setting'),
              onTap: ()=>onTap(context,2),
            ),ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Logout'),
              onTap: ()=>onTap(context,0),
            ),
          ],
        ),
      ),

    );
  }
}