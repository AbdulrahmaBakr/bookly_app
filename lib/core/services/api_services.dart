class ApiServices {
  final String baseUrl = 'https://www.googleapis.com/books/v1/';

  Future<Map<String, dynamic>> getData(String endPoint) async {
    var response = await Dio.get('$baseUrl$endPoint');
    return response.data;
  }
}
