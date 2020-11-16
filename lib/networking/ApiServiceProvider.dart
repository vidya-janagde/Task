import 'package:flutter/material.dart';
import 'package:fluttervaluelab/model/Datamodel.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;


class ApiServiceProvider{


static final  url='https://en.wikipedia.org//w/api.php?action=query&format=json&prop=pageimages%7Cpageterms&generator=prefixsearch&redirects=1&formatversion=2&piprop=thumbnail&pithumbsize=50&pilimit=10&wbptterms=description&gpssearch=Sachin+T&gpslimit=10';
 static Future<Data> getdata() async {
    var response = await http.get(url);
    if (response.statusCode == 200) {
      Map map = json.decode(response.body);

      Data responcedata= Data.fromJson(map);



      return  responcedata;
//
//      var data = map["query"];
//      var page1 = data ["pages"];
//      List <Pagedata> weightData =new List();
//      setState(() {
//
//        map.entries.map( (entry) { weightData.add(Pagedata.fromJson(entry));
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

