import 'package:frieght_bro/resources/post_data.dart';
import 'package:frieght_bro/resources/repository.dart';
import 'package:rxdart/rxdart.dart';

class SearchBloc {
  final _repository = Repository();
  final _dataFetcher = PublishSubject<Post>();

  Observable<Post> get allData => _dataFetcher.stream;

  fetchAllData() async {
    Post post = await _repository.getAllData();
    _dataFetcher.sink.add(post);
  }

  dispose() {
    _dataFetcher.close();
  }
}

final bloc = SearchBloc();