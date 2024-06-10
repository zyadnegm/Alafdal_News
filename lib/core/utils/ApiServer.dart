import 'package:dio/dio.dart';

class Api_Service {
  final baseUrl = "https://alafdalnews.com/jsontable/loadnewscatIOS.php?idcat=";
  final apikey = "2f986d3b2dmshe7f724ec2096f3bp197ce7jsn83f14f4c7148";
  final apihost = "arabic-news-api.p.rapidapi.com";
  final Dio dio;
  Api_Service(this.dio);

  Future<void> get(int id) async {
    var response = await dio.get("$baseUrl$id"
    );
    return response.data;
  }
}
