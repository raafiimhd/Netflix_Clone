import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:netflix/application/upcoming_movies/upcoming_movies.dart';



late Upcomming data;

Future<List<UpcommingMovies>> getUpcommingMovies() async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/movie/upcoming?api_key=9ecbe884400974d607deae876cd60161'));

  if (response.statusCode == 200) {
    final bodyJson = jsonDecode(response.body);
    data = Upcomming.fromJson(bodyJson);
    return data.results;
  } else {
    print('Error: ${response.statusCode}');
  }
  return data.results;
}

class Upcomming {
  final List<UpcommingMovies> results;

  Upcomming({required this.results});

  factory Upcomming.fromJson(Map<String, dynamic> json) {
    final List<dynamic> movieList = json['results'];
    final List<UpcommingMovies> movies =
        movieList.map((e) => UpcommingMovies.fromJson(e)).toList();
    return Upcomming(results: movies);
  }
}