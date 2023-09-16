import 'package:json_annotation/json_annotation.dart';

part 'past_year_movie.g.dart';

@JsonSerializable()
class PastYearMovies {
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;
  @JsonKey(name: 'original_language')
  String? originalLanguage;
  @JsonKey(name: 'original_title')
  String? originalTitle;
  String? overview;
  @JsonKey(name: 'poster_path')
  String? posterPath;
  @JsonKey(name: 'release_date')
  String? releaseDate;
  String? title;

  PastYearMovies({
    this.backdropPath,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.posterPath,
    this.releaseDate,
    this.title,
  });

  factory PastYearMovies.fromJson(Map<String, dynamic> json) {
    return _$PastYearMoviesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PastYearMoviesToJson(this);
}