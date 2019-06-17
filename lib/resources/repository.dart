import 'dart:async';

import 'package:frieght_bro/resources/post_data.dart';

class Repository {
  final dataProvider = DataProvider();

  Future<Post> getAllData() => dataProvider.fetchPost();
}