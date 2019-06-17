import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DataProvider {
  Future<Post> fetchPost() async {
    final response =
        await http.get('https://devapi.freightbro.com/public/ports');

    if (response.statusCode == 200) {
      return Post.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load post');
    }
  }
}

class Post {
  final String mode;
  final String search_query;

  Post({this.mode, this.search_query});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(mode: json['mode'], search_query: json['search_query']);
  }
}
