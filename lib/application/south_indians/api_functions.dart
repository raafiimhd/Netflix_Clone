import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:netflix/application/south_indians/south_indian.dart';




late South data;

Future<List<SouthIndian>> getSouthIndian() async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/trending/all/day?api_key=9ecbe884400974d607deae876cd60161'));

  if (response.statusCode == 200) {
    final bodyJson = jsonDecode(response.body);
    data = South.fromJson(bodyJson);
    return data.results;
  } else {
    print('Error: ${response.statusCode}');
  }
  return data.results;
}

class South {
  final List<SouthIndian> results;

  South({required this.results});

  factory South.fromJson(Map<String, dynamic> json) {
    final List<dynamic> movieList = json['results'];
    final List<SouthIndian> movies =
        movieList.map((e) => SouthIndian.fromJson(e)).toList();
    return South(results: movies);
  }
}