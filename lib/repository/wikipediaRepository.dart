

import 'package:dio/dio.dart';
import 'package:fluttervaluelab/model/wekipediaModel.dart';
import 'package:http/http.dart'as http;

class WikiRepository {

  static String mainUrl = "https://en.wikipedia.org";

  final Dio _dio = Dio();
  var getUrl = 'https://en.wikipedia.org//w/api.php?action=query&format=json&prop=pageimages%7Cpageterms&generator=prefixsearch&redirects=1&formatversion=2&piprop=thumbnail&pithumbsize=50&pilimit=10&wbptterms=description&gpssearch=Sachin+T&gpslimit=10';


  Future<Wikipedia> getList() async {


    try {
      Response response = await _dio.get(getUrl);
      print(response.data);



      return Wikipedia.fromJson(response.data);

    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
//      return WikiRepository.withError("$error");
    }
//    http.Response response = await http.get(getUrl);
//    if (response.statusCode == 200) {
//      return Wikipedia.fromJson(jsonDecode(response.body));
//    }
  }
}