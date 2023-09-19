import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:netflix/application/top_rated/top_rated.dart';




late TopRated data;

Future<List<TopRatedTVShows>> getTopRatedMovies() async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/tv/popular?api_key=9ecbe884400974d607deae876cd60161'));

  if (response.statusCode == 200) {
    final bodyJson = jsonDecode(response.body);
    data = TopRated.fromJson(bodyJson);
    return data.results;
  } else {
    print('Error: ${response.statusCode}');
  }
  return data.results;
}

class TopRated {
  final List<TopRatedTVShows> results;

  TopRated({required this.results});

  factory TopRated.fromJson(Map<String, dynamic> json) {
    final List<dynamic> movieList = json['results'];
    final List<TopRatedTVShows> movies =
        movieList.map((e) => TopRatedTVShows.fromJson(e)).toList();
    return TopRated(results: movies);
  }
}