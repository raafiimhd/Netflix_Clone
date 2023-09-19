import 'package:flutter/material.dart';
import 'package:netflix/core/constant.dart';
import 'package:netflix/presentation/widgets/main_card_widget.dart';
import 'package:netflix/presentation/widgets/main_tiltle.dart';


class MainTitleCard extends StatelessWidget {
  const MainTitleCard({super.key,
   required this.title, 
  required this.movies});

  final String title;
  final List movies;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 15,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MainTitle(
            title: title,
          ),
          kHeight,
          LimitedBox(
            maxHeight: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(
                movies.length,
                (index) => MainCardWidget(
                    imageurl:
                        'https://image.tmdb.org/t/p/w500${movies[index].posterPath}'),
              ),
            ),
          )
        ],
      ),
    );
  }
}