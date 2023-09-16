import 'package:json_annotation/json_annotation.dart';

part 'top_rated.g.dart';

@JsonSerializable()
class TopRatedTVShows {
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

  TopRatedTVShows({
    this.backdropPath,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.posterPath,
    this.releaseDate,
    this.title,
  });

  factory TopRatedTVShows.fromJson(Map<String, dynamic> json) {
    return _$TopRatedTVShowsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TopRatedTVShowsToJson(this);
}