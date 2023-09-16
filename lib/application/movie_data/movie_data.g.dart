// GENERATED CODE - DO NOT MODIFY BY HAND
part of 'movie_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieData _$MovieDataFromJson(Map<String, dynamic> json) => MovieData(
      backdropPath: json['backdrop_path'] as String?,
      originalTitle: json['original_title'] as String?,
      overview: json['overview'] as String?,
      posterPath: json['poster_path'] as String?,
      releaseDate: json['release_date'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$MovieDataToJson(MovieData instance) => <String, dynamic>{
      'backdrop_path': instance.backdropPath,
      'original_title': instance.originalTitle,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate,
      'title': instance.title,
    };
