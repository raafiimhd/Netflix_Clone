import 'package:flutter/material.dart';
import 'package:netflix/core/constant.dart';


class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kWidth,
        Text(
          title,
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900,
          ),
        ),
        const Spacer(),
        const Icon(
          Icons.cast,
          size: 30,
        ),
        kWidth,
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
              image: const DecorationImage(
                  image: NetworkImage(avatarImage), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(5)),
        ),
        kWidth
      ],
    );
  }
}