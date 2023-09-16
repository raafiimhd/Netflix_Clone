import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:netflix/core/colors/colors.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 180,
          child: Image.network(
            image,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: CircleAvatar(
            radius: 17,
            backgroundColor: Colors.black.withOpacity(0.3),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.volumeXmark,
                color: kWhiteColor,
              ),
              iconSize: 15,
            ),
          ),
        ),
      ],
    );
  }
}