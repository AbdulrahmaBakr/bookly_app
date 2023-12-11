import 'package:dio/dio.dart';

class ApiServices {
  final String baseUrl = 'https://www.googleapis.com/books/v1/';

  Future<Map<String, dynamic>> getData({required String endPoint}) async {
    var response = await Dio().get('$baseUrl$endPoint');
    return response.data;
  }
}
