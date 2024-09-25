// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Movies _$MoviesFromJson(Map<String, dynamic> json) => Movies(
      movies: (json['movies'] as List<dynamic>)
          .map((e) => MovieInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastUpdate: json['lastUpdate'] == null
          ? null
          : DateTime.parse(json['lastUpdate'] as String),
      imageBaseUrl: json['imageBaseUrl'] as String?,
    );

Map<String, dynamic> _$MoviesToJson(Movies instance) => <String, dynamic>{
      'movies': instance.movies,
      'lastUpdate': instance.lastUpdate?.toIso8601String(),
      'imageBaseUrl': instance.imageBaseUrl,
    };
