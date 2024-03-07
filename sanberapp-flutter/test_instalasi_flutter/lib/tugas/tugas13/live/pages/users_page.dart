import 'package:flutter/material.dart';
import '../service/user_service.dart';

import '../models/user_response_model.dart';

class UsersPage extends StatefulWidget {
  const UsersPage({super.key});

  @override
  State<UsersPage> createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  List<UserResponseModel> users = [];

  getData()async{
    users = await UserService(). fetchDataUser();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Users')
      ),
    );
  }
}