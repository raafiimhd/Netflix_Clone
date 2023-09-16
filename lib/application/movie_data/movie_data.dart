import 'package:json_annotation/json_annotation.dart';
part 'movie_data.g.dart';
@JsonSerializable()
class MovieData {
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;
  @JsonKey(name: 'original_title')
  String? originalTitle;
  String? overview;
  @JsonKey(name: 'poster_path')
  String? posterPath;
  @JsonKey(name: 'release_date')
  String? releaseDate;
  String? title;

  MovieData({
    this.backdropPath,
    this.originalTitle,
    this.overview,
    this.posterPath,
    this.releaseDate,
    this.title,
  });

  factory MovieData.fromJson(Map<String, dynamic> json) {
    return _$MovieDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MovieDataToJson(this);
 }