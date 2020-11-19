import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:fluttervaluelab/model/Datamodel.dart';
import 'package:fluttervaluelab/model/Querydata.dart';
import 'package:fluttervaluelab/model/Thumbnaildata.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class ApiServiceProvider {

 static SharedPreferences pref ;
 static var map;
  static List<Data> list = [];
  static final url =
      'https://en.wikipedia.org//w/api.php?action=query&format=json&prop=pageimages%7Cpageterms&generator=prefixsearch&redirects=1&formatversion=2&piprop=thumbnail&pithumbsize=50&pilimit=10&wbptterms=description&gpssearch=Sachin+T&gpslimit=10';

 static Future<List<Data>> getdata() async {
    var response = await http.get(url);
    if (response.statusCode == 200) {
      map = json.decode(response.body);

      var responcedata = Data.fromJson(map);

      list.add(Data.fromJson(map));


      saveJson(map);

      return list;
    }
  }


static saveJson(Map map)
  async {
    pref== await SharedPreferences.getInstance();
    String wiki_pedia = jsonEncode(Data.fromJson(map));
    pref.setString('wiki', wiki_pedia);


  }

  static Future<List<Data>> getJason()
  async {
    pref = await SharedPreferences.getInstance();
    var json = jsonDecode(pref.getString('wiki'));
    list.add(Data.fromJson(json));
    return list;
  }

}
