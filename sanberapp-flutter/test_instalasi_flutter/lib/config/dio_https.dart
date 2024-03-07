import 'package:test_instalasi_flutter/config/base_url.dart';
import 'package:test_instalasi_flutter/config/dio_https.dart';

class DioHttp {
  // this is standarized request for Everyone
  static Map<String, dynamic> headers ={
    "Accept": "application/json",
    "Content-Type": 'application/json',
  };

  static Dio request = Dio(
    BaseOptions(
      // validateStatus: (status) => status! <= 500,
      baseUrl: baseUrl,
      headers: headers,
    ),
  );
}