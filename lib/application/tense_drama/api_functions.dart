import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:netflix/application/tense_drama/tense_drama.dart';

late Tense data;

Future<List<TenseDrama>> getTenseDrama() async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/tv/airing_today?api_key=9ecbe884400974d607deae876cd60161'));

  if (response.statusCode == 200) {
    final bodyJson = jsonDecode(response.body);
    data = Tense.fromJson(bodyJson);
    return data.results;
  } else {
    print('Error: ${response.statusCode}');
  }
  return data.results;
}

class Tense {
  final List<TenseDrama> results;

  Tense({required this.results});

  factory Tense.fromJson(Map<String, dynamic> json) {
    final List<dynamic> movieList = json['results'];
    final List<TenseDrama> movies =
        movieList.map((e) => TenseDrama.fromJson(e)).toList();
    return Tense(results: movies);
  }
}