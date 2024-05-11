import 'package:dio/dio.dart';

class Api_Service {
  final baseUrl = "https://arabic-news-api.p.rapidapi.com/";
  final apikey = "2f986d3b2dmshe7f724ec2096f3bp197ce7jsn83f14f4c7148";
  final apihost = "arabic-news-api.p.rapidapi.com";
  final Dio dio;
  Api_Service(this.dio);

  Future<Map<String, dynamic>> get({required String endpoint}) async {
    var response = await dio.get("$baseUrl$endpoint",
        options: Options(
            headers: {"X-RapidAPI-Key": apikey, "X-RapidAPI-Host": apihost}));
    return response.data;
  }
}
