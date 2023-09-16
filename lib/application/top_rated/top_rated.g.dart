// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_rated.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TopRatedTVShows _$TopRatedTVShowsFromJson(Map<String, dynamic> json) =>
    TopRatedTVShows(
      backdropPath: json['backdrop_path'] as String?,
      originalLanguage: json['original_language'] as String?,
      originalTitle: json['original_title'] as String?,
      overview: json['overview'] as String?,
      posterPath: json['poster_path'] as String?,
      releaseDate: json['release_date'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$TopRatedTVShowsToJson(TopRatedTVShows instance) =>
    <String, dynamic>{
      'backdrop_path': instance.backdropPath,
      'original_language': instance.originalLanguage,
      'original_title': instance.originalTitle,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate,
      'title': instance.title,
    };