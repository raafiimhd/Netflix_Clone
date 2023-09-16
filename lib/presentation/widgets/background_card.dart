import 'package:flutter/material.dart';
import 'package:netflix/application/movie_data/api_functions.dart';
import 'package:netflix/application/movie_data/movie_data.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/presentation/widgets/custom_button_widget.dart';


class BackgoundCardWidget extends StatelessWidget {
  const BackgoundCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<MovieData>>(
        future: getMovie(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const SizedBox(
                height: 600,
                width: double.infinity,
                child: CircularProgressIndicator(
                  strokeAlign: BorderSide.strokeAlignCenter,
                )); // Show a loading indicator while data is being fetched
          } else if (snapshot.hasError) {
            return Text(
                'Error: ${snapshot.error}'); // Show an error message if an error occurs
          } else if (snapshot.hasData) {
            final movies = snapshot.data!;
            return Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 600,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                          'https://image.tmdb.org/t/p/w500${movies[4].posterPath}',
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const CoustomButtonWidget(
                            icon: Icons.add, title: 'My List'),
                        _playButton(),
                        const CoustomButtonWidget(
                            icon: Icons.info, title: 'Info')
                      ],
                    ),
                  ),
                )
              ],
            );
          } else {
            return Text(
                'No data available'); // Show a message if no data is available
          }
        });
  }

  TextButton _playButton() {
    return TextButton.icon(
      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(kWhiteColor)),
      onPressed: () {},
      icon: const Icon(
        Icons.play_arrow,
        color: kBlackColor,
      ),
      label: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          'Play',
          style: TextStyle(
            fontSize: 20,
            color: kBlackColor,
          ),
        ),
      ),
    );
  }
}