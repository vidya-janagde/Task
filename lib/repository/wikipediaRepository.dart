import 'dart:convert';

import 'package:connectivity/connectivity.dart';
import 'package:fluttervaluelab/Utils/Strings.dart';
import 'package:http/http.dart' as http;

import 'package:fluttervaluelab/model/Datamodel.dart';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WikiRepository {
  static String mainUrl = "https://en.wikipedia.org";
  static SharedPreferences pref;



  Future<Data> getList() async {
    try {
      http.Response response = await http.get(BASE_URL);

      var map = json.decode(response.body);
      saveJson(map);

      Data responcedata = Data.fromJson(map);

      return responcedata;
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
    }
  }




  static saveJson(Map map) async {
    pref == await SharedPreferences.getInstance();
    String wiki_pedia = jsonEncode(Data.fromJson(map));
    pref.setString('wiki', wiki_pedia);
  }

Future<Data> getJason() async {
    pref = await SharedPreferences.getInstance();
    var json = jsonDecode(pref.getString('wiki'));

    return Data.fromJson(json);
  }
}
