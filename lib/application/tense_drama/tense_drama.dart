import 'package:json_annotation/json_annotation.dart';

part 'tense_drama.g.dart';

@JsonSerializable()
class TenseDrama {
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

  TenseDrama({
    this.backdropPath,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.posterPath,
    this.releaseDate,
    this.title,
  });

  factory TenseDrama.fromJson(Map<String, dynamic> json) {
    return _$TenseDramaFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TenseDramaToJson(this);
}