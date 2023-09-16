import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constant.dart';
import 'package:netflix/presentation/widgets/custom_button_widget.dart';
import 'package:netflix/presentation/widgets/video_widget.dart';

class EveryonesWatchingWidget extends StatelessWidget {
  EveryonesWatchingWidget({super.key, this.name, this.description,required this.posterurl});

  final String? name, description, posterurl;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name ?? 'Unavailable',
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        kHight20,
        Text(
          description ?? 'notavailable',
          style: const TextStyle(
            color: kGerayColor,
          ),
        ),
        kHight30,
        VideoWidget(image: 'https://image.tmdb.org/t/p/w500$posterurl'),
        kHight30,
        const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CoustomButtonWidget(
              icon: FontAwesomeIcons.paperPlane,
              title: 'Share',
              textSize: 15,
              iconSize: 30,
              fontWeight: FontWeight.normal,
              textColor: kGerayColor,
            ),
            kWidth,
            CoustomButtonWidget(
              icon: FontAwesomeIcons.plus,
              title: 'My List',
              textSize: 15,
              iconSize: 30,
              fontWeight: FontWeight.normal,
              textColor: kGerayColor,
            ),
            kWidth,
            CoustomButtonWidget(
              icon: FontAwesomeIcons.play,
              title: 'Play',
              textSize: 15,
              iconSize: 30,
              fontWeight: FontWeight.normal,
              textColor: kGerayColor,
            ),
            kWidth
          ],
        ),
        Row(
          children: [
            Image.network(netflixLogo, height: 40),
            const Text(
              'SERIES',
              style: TextStyle(
                letterSpacing: 4,
                fontSize: 10,
                color: kGerayColor,
              ),
            )
          ],
        ),
      ],
    );
  }
}
