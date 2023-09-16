import 'package:json_annotation/json_annotation.dart';

part 'south_indian.g.dart';

@JsonSerializable()
class SouthIndian {
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

  SouthIndian({
    this.backdropPath,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.posterPath,
    this.releaseDate,
    this.title,
  });

  factory SouthIndian.fromJson(Map<String, dynamic> json) {
    return _$SouthIndianFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SouthIndianToJson(this);
}