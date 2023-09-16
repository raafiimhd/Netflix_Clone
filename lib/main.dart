import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/application/movie_data/api_functions.dart';
import 'package:netflix/application/movie_data/movie_data.dart';
import 'package:netflix/application/south_indians/api_functions.dart';
import 'package:netflix/application/tense_drama/api_functions.dart';
import 'package:netflix/application/top_rated/api_functions.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/presentation/main_page/screen_main_page.dart';

import 'application/past_year_movies/api_function.dart';



List<MovieData> trendingmovies = [];

List topratedmovies = [];

List releasedinthepastyear = [];

List tensedrama = [];

List southindian = [];

String backgroundimage = '';

void main() async{
  runApp(const MyApp());
   trendingmovies = await getMovie();
  releasedinthepastyear = await getPastYearMovies();
  topratedmovies = await getTopRatedMovies();
  tensedrama = await getTenseDrama();
  southindian = await getSouthIndian();
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
    void initState() {
    loadMovies();
    super.initState();
  }

  final String apikey = '9ecbe884400974d607deae876cd60161';
  final String readaccesstoken =
      'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI5ZWNiZTg4NDQwMDk3NGQ2MDdkZWFlODc2Y2Q2MDE2MSIsInN1YiI6IjY0YjM4ZDM1MjNkMjc4MDEyNjFhNmQ1YiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.WTewyb_p4i6C1VpYEtXT4EqLAzCwYJyA4r_uGby809A';

  loadMovies() async {
    // var list = await getMovie();

    // trendingmovies = await getMovie();

    // for (int i = 0; i < list.length; i++) {
    //   trendingmovies[i] = list[i];
    // }
    // TMDB tmdbwithcustomlogs = TMDB(
    //   ApiKeys(apikey, readaccesstoken),
    //   logConfig: const ConfigLogger(
    //     showLogs: true,
    //     showErrorLogs: true,
    //   ),
    // );
    // Map trendingresults = await tmdbwithcustomlogs.v3.trending.getTrending();
    // Map topratedresults = await tmdbwithcustomlogs.v3.movies.getTopRated();
    // Map movieresults = await tmdbwithcustomlogs.v3.tv.getTopRated();
    // Map upcomingMoviesresult = await tmdbwithcustomlogs.v3.movies.getUpcoming();

    setState(() {
      // trendingmovies = trendingresults['results'];
      // topratedmovies = topratedresults['results'];
      // releasedinthepastyear = movieresults['results'];
      // upcomingmovies = upcomingMoviesresult['results'];
    });
    // print(upcomingMoviesresult);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: backgroundColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent
        ),
        fontFamily: GoogleFonts.montserrat().fontFamily,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.white),
          bodyLarge: TextStyle(color: Colors.white),
          
        ),
        useMaterial3: true,
      ),
      home:  ScreenMainPage(),
    );
  }
}

