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
                  new Text(list[index].query[index] == null
                      ? 'Nodata'
                      : list[index].query[index]),
                  new Text(list[index].query[index] == null
                      ? 'Nodata'
                      : list[index].query[index]),
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
