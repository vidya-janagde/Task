

import 'package:connectivity/connectivity.dart';
import 'package:fluttervaluelab/model/Datamodel.dart';

import 'package:fluttervaluelab/repository/wikipediaRepository.dart';

import 'package:rxdart/subjects.dart';

class WikiBloc
{
  WikiRepository _repository= WikiRepository();
 static bool network_state =false;
  Data response;

  final BehaviorSubject<Data> _subject =
  BehaviorSubject<Data>();



  getData() async {

    check();

    if(await network_state == true)
      {
        response = await _repository.getList();
      }

    else
      response=await _repository.getJason();


    _subject.sink.add(response);
  }

 static Future<bool> check() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile || connectivityResult == ConnectivityResult.wifi) {

      network_state =true;

      return network_state;
    }
    return network_state;
  }


  dispose() {
    _subject.close();
  }

  BehaviorSubject<Data> get subject => _subject;
}

final moviesBloc = WikiBloc();


