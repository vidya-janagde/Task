import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:fluttervaluelab/model/Datamodel.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;


class ApiServiceProvider{


static final  url='https://en.wikipedia.org//w/api.php?action=query&format=json&prop=pageimages%7Cpageterms&generator=prefixsearch&redirects=1&formatversion=2&piprop=thumbnail&pithumbsize=50&pilimit=10&wbptterms=description&gpssearch=Sachin+T&gpslimit=10';
 static Future<HashMap<String, List<Data>>> getdata() async {
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var map = json.decode(response.body);

      Data responcedata= Data.fromJson(map);

      LinkedHashMap<dynamic, dynamic> theParsedOne = new LinkedHashMap.of(map);
   HashMap<dynamic, List<Data>> newMap = HashMap.from(theParsedOne.map((key, value) {
   List<Page> values = List.from(value);
   return MapEntry(
   key.toString(),
   values.map((theValue) {
   return theValue.toString();
   }).toList());
   }));

      

      return  newMap;
//
      var data = map["query"];
      var page1 = data ["pages"];
//      List <Page> weightData =new List();
//      setState(() {
//
//        map.entries.map( (entry) { weightData.add(Page.fromJson(entry));
//        print(entry);
//        }).toList();
//      });


//       streetsList = new List.from(page1);

//      for (int i = 0; i < page1.length; i++) {
//        weightData.add(new Pagedata.fromJson(map[i]));
//      }

    }
  }


}

