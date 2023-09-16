import 'package:flutter/material.dart';
import 'package:netflix/main.dart';

import 'widgets/video__list_items.dart';

class ScreenFastLaugh extends StatelessWidget {
  const ScreenFastLaugh({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: PageView(
          scrollDirection: Axis.vertical,
          children: List.generate(
            trendingmovies.length,
            (index) => VideoListItem(index: index),
          ),
        ),)
    );
  }
}
