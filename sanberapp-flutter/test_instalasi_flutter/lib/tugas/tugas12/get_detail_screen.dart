import 'dart:convert';

import 'package:flutter/material.dart'
import 'package:http/http.dart' as http;

class GetDatailDataScreen extends StatefulWidget {
  int? value;
  GetDatailDataScreen({Key? key, this.value}) : super(key:key);

  @override
  State<GetDetailDataScreen> createState() => _GetDetailDataScreenState(value);
}

class _GetDetailDataScreenState extends State<GetDetailDataScreen> {
  int? value;
  _GetDetailDataScreenState(this.value);
}
Map? data;
String? uri;

@override
void initState() {
  var url = 'https://reqres.in/api/users/${value.toString()}';
  _getRefreshData(url);
  super.initState();
  print('Cek parameter +${value}');
}

Future<void> _getRefreshData(url) async {
  getJsonData(context, url);
}

Future<void> getJsonData(BuildContext context,url) async{
  setState(() {
    uri = url;
  })
  var response = await http
      .get(Uri.parse(uri.toString()), headers: {'Accept': 'aplication/json'});
  print(response.body);
  setState((){
    var convertDataToJson = jsonDecode (response.body);
    data = convertDataToJson['data'];
  });
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text ('Get detail data api regres'),
    ),
    body:Container(
      child: data == null
      ? Center(
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: Colors.grey),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              CircularProgressIndicator(),
              SizedBox(
                height: 10,
              ),
              Text(
                'Loading..',
                style: TextStyle(color: Colors.white),                
              )
            ],
          ),
        ),
      )
      : Container(
        child :ListTile(
          leading: Image.network(data!['avatar']),
          title: Text(data!['first_name']+ " " + data!['last_name']),
          subtitle: Text(data!['email']),
          ),
        ),
      ),
    );
    }
  }
}