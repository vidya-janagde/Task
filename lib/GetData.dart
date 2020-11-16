import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:fluttervaluelab/networking/ApiServiceProvider.dart';

import 'model/Datamodel.dart';

class Getdata extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return GetDataState();
  }
}

class GetDataState extends State<Getdata> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
      future: ApiServiceProvider.getdata(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<Data> list = snapshot.data;

          print('Snapshot has data');
          return ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (context, index) {
              return new Row(
                children: <Widget>[
                  new Text(list[index].query == null
                      ? 'Nodata'
                      : list[index].query.pages.title),
                  new Text(list[index].query.pages.ns == null
                      ? 'Nodata'
                      : list[index].query.pages.ns),
                  Image.network(list[index].query.pages.thumbnail.source),
                  Text(list[index].query.pages.terms.description)
                ],
              );
            },
          );
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    ));
  }
}
