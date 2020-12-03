import 'package:flutter/material.dart';
import 'package:fluttervaluelab/bloc/wikipediaBloc.dart';

import 'package:url_launcher/url_launcher.dart';

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
      home: MyHomePage(title: ''),
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
  Data wikipedia;

  @override
  void initState() {
    super.initState();
    WikiBloc.check();
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
              return listWidget(context, snapshot);
            }
            print(snapshot.data);

            return listWidget(context, snapshot);
          } else if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          } else {
            return Center(child: CircularProgressIndicator());
          }
        });
  }

  Widget listWidget(BuildContext context, AsyncSnapshot<Data> snapshot) {
    return ListView.builder(
        itemCount: snapshot.data.query.pages.length,
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () => launchURL(snapshot.data.query.pages[index].title),
              child: Container(
                child: Card(
                    child: Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Visibility(
                        visible:
                            snapshot.data.query.pages[index].thumbnail.source !=
                                    null ||
                                WikiBloc.network_state != false,
                        child: Image.network(snapshot
                                    .data.query.pages[index].thumbnail.source ==
                                ""
                            ? Image.network(
                                "https://cdn0.iconfinder.com/data/icons/set-ui-app-android/32/8-512.png")
                            : snapshot
                                .data.query.pages[index].thumbnail.source),
                      ),

                      Text(snapshot.data.query.pages[index].title),

                      // Text(snapshot.data.query .pages[index].terms.description[index])
                    ],
                  ),
                )),
              ));
        });
  }

  launchURL(String name) async {
    const url = 'https://en.wikipedia.org/wiki/';
    if (await canLaunch(url)) {
      await launch("https://en.wikipedia.org/wiki/$name");
    } else {
      throw "Could not launch";
    }
  }
}
