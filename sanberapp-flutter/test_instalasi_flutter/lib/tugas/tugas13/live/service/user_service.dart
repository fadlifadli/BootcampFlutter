import 'package:test_instalasi_flutter/tugas/tugas13/live/models/user_response_model.dart';
import 'package:dio/dio.dart';

class UserService {
  Dio dio = Dio();

  static const url = 'https://reqres.in/api/users';

  Future<List<UserResponseModel>> fecthDataUser() async {
    final response = await dio.get(url,
    options: Options(headers: {'Accept': 'Application/json'}));

    if (response.statusCode == 200 || response.statusCode == 201) {
      final data = response.data['data'];

      List<UserResponseModel> users= List<UserResponseModel>.from(
        data.map ((user)=> UserResponseModel.fromJson(user)));
        return users;
    }
    throw Exception();

  }
}