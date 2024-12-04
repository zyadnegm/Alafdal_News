import 'package:dio/dio.dart';

class Api_Service {
  final baseUrl = "https://alafdalnews.com/jsontable/loadnewscatIOS.php?idcat=";
  final Dio dio;
  Api_Service(this.dio);

  Future<void> get(int id) async {
    var response = await dio.get("$baseUrl$id"
    );
    return response.data;
  }
  Future<void> getnotificaion(int id) async {
    var response = await dio.get("https://alafdalnews.com/jsontable/loadnewsByID.php?id=$id"
    );
    return response.data;
  }

}
