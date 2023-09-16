import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/constant.dart';
import 'package:netflix/main.dart';


const String imageUrl =
    'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/iHk3FOQTXgIdqEtrW4EqIQ2D0pL.jpg';

class NumberCard extends StatelessWidget {
  const NumberCard({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 40,
              height: 250,
            ),
            Container(
              width: 150,
              height: 250,
              decoration: BoxDecoration(
                  borderRadius: kRadius20,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image:  NetworkImage(
                        'https://image.tmdb.org/t/p/w500${topratedmovies[index].posterPath}'),
                  )),
            ),
          ],
        ),
        Positioned(
            left: 3,
            child: BorderedText(
              strokeWidth: 4,
              strokeColor: Colors.white.withOpacity(0.5),
              child: Text(
                '${index + 1}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 160,
                  decoration: TextDecoration.none,
                  decorationColor: Colors.black.withOpacity(0.5),
                  fontWeight: FontWeight.bold,
                  // fontFamily: GoogleFonts.roboto().fontFamily),
                ),
              ),
            ))
      ],
    );
  }
}