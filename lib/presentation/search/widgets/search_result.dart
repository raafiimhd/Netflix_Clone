import 'package:flutter/material.dart';
import 'package:netflix/main.dart';
import 'package:netflix/presentation/search/widgets/search_widget.dart';

import '../../../application/movie_data/movie_data.dart';


const imageUrl =
    'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/dalsmJZErwS1oqDJoSi85sxdxMX.jpg';

class SearchResultsWidget extends StatelessWidget {
  const SearchResultsWidget({super.key, required this.movielist});

  final List<MovieData> movielist;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchWidgetTitle(title: 'Movies & TV'),
        Expanded(
          child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 3,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 1 / 1.4,
            children: List.generate(20, (index) {
              return MainCard(
                posterurl: trendingmovies[index].posterPath!,
              );
            }),
          ),
        )
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({super.key, required this.posterurl});
  final String posterurl;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(posterurl), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(10)),
    );
  }
}