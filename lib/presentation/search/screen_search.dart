import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/application/movie_data/movie_data.dart';
import 'package:netflix/core/constant.dart';
import 'package:netflix/main.dart';
import 'package:netflix/presentation/search/widgets/search_idel.dart';

class ScreenSearch extends StatefulWidget {
  const ScreenSearch({super.key});

  @override
  State<ScreenSearch> createState() => _ScreenSearchState();
}

class _ScreenSearchState extends State<ScreenSearch> {
  List<MovieData> movielist = [];
  TextEditingController searchcontroller = TextEditingController();

  @override
  void initState() {
    movielist = trendingmovies;
    super.initState();
  }

  void search(String moviname) {
    List<MovieData> result = [];
    if (moviname.isEmpty) {
      result = trendingmovies;
    } else {
      result = trendingmovies
          .where((element) =>
              element.title!.toLowerCase().contains(moviname.toLowerCase()))
          .toList();
    }
    setState(() {
      movielist = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CupertinoSearchTextField(
            controller: searchcontroller,
            onChanged: (value) => search(value),
            backgroundColor: Colors.grey.withOpacity(0.4),
            prefixIcon: const Icon(
              CupertinoIcons.search,
              color: Colors.grey,
            ),
            suffixIcon: const Icon(
              CupertinoIcons.xmark_circle_fill,
              color: Colors.grey,
            ),
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          kHeight,
          Expanded(
              child: //searchcontroller.text.isEmpty
                  SearchIdelWidget(movilist: movielist)
              // SearchResultsWidget(movielist: trendingmovies),
              ),
        ],
      ),
    )));
  }
}