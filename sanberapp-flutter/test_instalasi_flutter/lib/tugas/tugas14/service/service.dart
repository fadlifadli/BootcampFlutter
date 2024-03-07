import 'dart:async';

import '../model/postmodel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class Service{
  Future<List<Postmodel>?> getallposts() async {
    try {
      var response = await http
      .get(Uri.parse("https://jsonplaceholder.typicode.com/posts"))
      .timeout(const Duration(seconds:10), onTimeout: () {
        throw TimeoutException("connection time out try agian");
      });

      if (response.statusCode == 200) {
        List jsonresponse = convert.jsonDecode(response.body);
        return jsonresponse.map((e) => new Postmodel.fromJson(e)).toList();
      }else{
        return null;
      }
    } on TimeoutException catch (_) {
      print("response time out");
    }
  }
}