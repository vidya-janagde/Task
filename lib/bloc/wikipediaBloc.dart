

import 'package:fluttervaluelab/model/wekipediaModel.dart';
import 'package:fluttervaluelab/repository/wikipediaRepository.dart';
import 'package:rxdart/rxdart.dart';

class WikiBloc
{
  WikiRepository _repository= WikiRepository();

  final BehaviorSubject<Wikipedia> _subject =
  BehaviorSubject<Wikipedia>();

  getData() async {
    Wikipedia response = await _repository.getList();
    _subject.sink.add(response);
  }

  dispose() {
    _subject.close();
  }

  BehaviorSubject<Wikipedia> get subject => _subject;
}

final moviesBloc = WikiBloc();


