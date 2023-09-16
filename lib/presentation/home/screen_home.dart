import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix/core/constant.dart';
import 'package:netflix/main.dart';
import 'package:netflix/presentation/home/widgets/number_card.dart';
import 'package:netflix/presentation/widgets/background_card.dart';
import 'package:netflix/presentation/widgets/main_page_card_title.dart';
import 'package:netflix/presentation/widgets/main_tiltle.dart';


const imageUrl =
    'https://cdn-images-1.medium.com/v2/resize:fit:1200/1*ty4NvNrGg4ReETxqU2N3Og.png';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder<bool>(
        valueListenable: scrollNotifier,
        builder: (context, value, child) {
          return NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              final ScrollDirection direction = notification.direction;
              if (direction == ScrollDirection.reverse) {
                scrollNotifier.value = false;
              } else if (direction == ScrollDirection.forward) {
                scrollNotifier.value = true;
              }
              return true;
            },
            child: Stack(
              children: [
                ListView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  children: [
                    const BackgoundCardWidget(),
                    MainTitleCard(
                        title: 'Released in the past year',
                        movies: releasedinthepastyear),
                    kHeight,
                    MainTitleCard(
                        title: 'Trending Now', movies: trendingmovies),
                    kHeight,
                    const NumberTitleCard(),
                    kHeight,
                    MainTitleCard(title: 'Tense Dramas', movies: tensedrama),
                    kHeight,
                    MainTitleCard(
                        title: 'South Indian Cinema', movies: southindian),
                  ],
                ),
                if (scrollNotifier.value == true)
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 3000),
                    child: Container(
                      width: double.infinity,
                      height: 80,
                      color: Colors.black.withOpacity(0.3),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const Image(
                                image: NetworkImage(imageUrl),
                                width: 50,
                                height: 50,
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
                                        image: NetworkImage(avatarImage),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                              kWidth
                            ],
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'TV Shows',
                                style: kHomeTitleText,
                              ),
                              Text('Movies', style: kHomeTitleText),
                              Text('Categories', style: kHomeTitleText)
                            ],
                          )
                        ],
                      ),
                    ),
                  )
              ],
            ),
          );
        },
      ),
    );
  }
}

class NumberTitleCard extends StatelessWidget {
  const NumberTitleCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MainTitle(
          title: 'Top 10 TV Shows In India Today',
        ),
        kHeight,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              topratedmovies.length - 10,
              (index) => NumberCard(
                index: index,
              ),
            ),
          ),
        )
      ],
    );
  }
}