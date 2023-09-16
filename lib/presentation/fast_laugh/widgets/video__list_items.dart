import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/main.dart';
// const imageUrl =
//     'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/zrPpUlehQaBf8YX2NrVrKK8IEpf.jpg';

class VideoListItem extends StatelessWidget {
  const VideoListItem({super.key, required this.index});

  final int index;

  // final String posterurl;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          // width: double.infinity,
          // height: double.infinity,
          // color: Colors.accents[index % Colors.accents.length],
          decoration: BoxDecoration(
              color: Colors.accents[index % Colors.accents.length],
              image: DecorationImage(
                  image: NetworkImage(
                      'https://image.tmdb.org/t/p/w500${trendingmovies[index].posterPath}'),
                  fit: BoxFit.cover)),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.black.withOpacity(0.5),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      FontAwesomeIcons.volumeXmark,
                      color: Colors.white70,
                      size: 30,
                    ),
                    iconSize: 30,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://image.tmdb.org/t/p/w500${trendingmovies[index].backdropPath}'),
                        radius: 30,
                      ),
                    ),
                    const VideoActions(
                        icon: Icons.emoji_emotions, title: 'LOL'),
                    const VideoActions(icon: Icons.add, title: 'My List'),
                    const VideoActions(icon: Icons.share, title: 'Share'),
                    const VideoActions(icon: Icons.play_arrow, title: 'Play'),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class VideoActions extends StatelessWidget {
  const VideoActions({
    super.key,
    required this.icon,
    required this.title,
  });

  final IconData icon;

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 10,
      ),
      child: Column(
        children: [
          Icon(
            icon,
            color: kWhiteColor,
          ),
          Text(
            title,
            style: const TextStyle(
              color: kWhiteColor,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}