

import 'package:fluttervaluelab/model/Datamodel.dart';

import 'package:fluttervaluelab/repository/wikipediaRepository.dart';
import 'package:rxdart/rxdart.dart';

class WikiBloc
{
  WikiRepository _repository= WikiRepository();

  final BehaviorSubject<Data> _subject =
  BehaviorSubject<Data>();

  getData() async {
    Data response = await _repository.getList();
    _subject.sink.add(response);
  }

  dispose() {
    _subject.close();
  }

  BehaviorSubject<Data> get subject => _subject;
}

final moviesBloc = WikiBloc();


