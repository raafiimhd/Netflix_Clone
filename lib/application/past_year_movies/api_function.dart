import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:netflix/application/past_year_movies/past_year_movie.dart';



late PastYear data;

Future<List<PastYearMovies>> getPastYearMovies() async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/tv/top_rated?api_key=9ecbe884400974d607deae876cd60161'));

  if (response.statusCode == 200) {
    final bodyJson = jsonDecode(response.body);
    data = PastYear.fromJson(bodyJson);
    return data.results;
  } else {
    print('Error: ${response.statusCode}');
  }
  return data.results;
}

class PastYear {
  final List<PastYearMovies> results;

  PastYear({required this.results});

  factory PastYear.fromJson(Map<String, dynamic> json) {
    final List<dynamic> movieList = json['results'];
    final List<PastYearMovies> movies =
        movieList.map((e) => PastYearMovies.fromJson(e)).toList();
    return PastYear(results: movies);
  }
}