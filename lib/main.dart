import 'package:flutter/material.dart';
import 'package:fluttervaluelab/bloc/wikipediaBloc.dart';

import 'GetData.dart';
import 'model/Datamodel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Getdata()
//      MyHomePage(title: 'Flutter Demo Home Page'),
        );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  WikiBloc _wikiBloc;
  Data wikipedia;

  @override
  void initState() {
    super.initState();
    moviesBloc..getData();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Data>(
        stream: moviesBloc.subject.stream,
        builder: (context, AsyncSnapshot<Data> snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data != null) {
              print(snapshot.data);
              return Text(snapshot.data.toString());
            }
            print(snapshot.data);

            return listWidget(snapshot.data);
          } else if (snapshot.hasError) {
            print(snapshot.error);
//            return _buildErrorWidget(snapshot.error);
          } else {
            print('success');
            return Container(
              child: Text("Responce$snapshot.data.toString()"),
            );
          }
        });
  }

  Widget listWidget(Data data) {
    var suggestionList = data.query;
//var list =suggestionList.;

    return ListView.builder(

//        itemCount: data.,
        itemBuilder: (context, index) {
      return GestureDetector(
        onTap: () {},
        child: Container(
          child:Card(

         child:Card(
           child: Column(
             children: <Widget>[
               Text(suggestionList.pages.title),
               Image.network(suggestionList.pages.thumbnail.source),
               Text(suggestionList.pages.terms.description)
             ],
           ),
         )

        ),
      ));
    });
  }
}
