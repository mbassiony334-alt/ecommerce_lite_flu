import 'package:dio/dio.dart';

class Repologin {
  static final dio = Dio();

  static login(String user, String pass) async {
    var response = await dio.post(
      "https://dummyjson.com/auth/login",
      data: {"username": user, "password": pass},
      options: Options(headers: {"Content-Type": "application/json"}),
    );
    print(response);
  }
}
