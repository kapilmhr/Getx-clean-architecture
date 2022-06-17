import 'package:dio/dio.dart';

import '../screens/model/Flower.dart';
import 'ApiUrl.dart';

class ApiServices {
  Future<dynamic> get(url) async {
    var dio = Dio();
    dio.interceptors.add(
        LogInterceptor(responseBody: true, request: true, requestBody: true));
    try {
      var response = await dio.get(ApiUrl.baseUrl + url);
      return response.data;
    } on DioError catch (e) {
      throw Exception(e);
    }
  }
}
