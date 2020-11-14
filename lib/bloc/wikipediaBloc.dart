
import 'package:fluttervaluelabassignment/model/wekipediaModel.dart';
import 'package:fluttervaluelabassignment/repository/wikipediaRepository.dart';
import 'package:rxdart/rxdart.dart';

class WikiBloc
{
  WikiRepository _repository= WikiRepository();

  final BehaviorSubject<Query> _subject =
  BehaviorSubject<Query>();

  getData() async {
    Query response = await _repository.getList();
    _subject.sink.add(response);
  }

  dispose() {
    _subject.close();
  }

  BehaviorSubject<Query> get subject => _subject;
}

final moviesBloc = WikiBloc();


