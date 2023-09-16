import 'package:json_annotation/json_annotation.dart';

part 'upcoming_movies.g.dart';

@JsonSerializable()
class UpcommingMovies {
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

  UpcommingMovies({
    this.backdropPath,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.posterPath,
    this.releaseDate,
    this.title,
  });

  factory UpcommingMovies.fromJson(Map<String, dynamic> json) {
    return _$UpcommingMoviesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UpcommingMoviesToJson(this);
}