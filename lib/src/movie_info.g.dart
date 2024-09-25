// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieInfo _$MovieInfoFromJson(Map<String, dynamic> json) => MovieInfo(
      tmdbId: (json['tmdbId'] as num).toInt(),
      imdbId: json['imdbId'] as String,
      kinopoiskId: json['kinopoiskId'] as String,
      posterPath: json['posterPath'] as String?,
      overview: json['overview'] as String,
      releaseDate: json['releaseDate'] == null
          ? null
          : DateTime.parse(json['releaseDate'] as String),
      title: json['title'] as String,
      backdropPath: json['backdropPath'] as String?,
      rating: MovieRating.fromJson(json['rating'] as Map<String, dynamic>),
      torrentsInfo: (json['torrentsInfo'] as List<dynamic>)
          .map((e) => MovieTorrentInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      youtubeTrailerKey: json['youtubeTrailerKey'] as String?,
      cast: (json['cast'] as List<dynamic>)
          .map((e) => MovieCast.fromJson(e as Map<String, dynamic>))
          .toList(),
      crew: (json['crew'] as List<dynamic>)
          .map((e) => MovieCrew.fromJson(e as Map<String, dynamic>))
          .toList(),
      productionCountries: (json['productionCountries'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      genres:
          (json['genres'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$MovieInfoToJson(MovieInfo instance) {
  final val = <String, dynamic>{
    'tmdbId': instance.tmdbId,
    'imdbId': instance.imdbId,
    'kinopoiskId': instance.kinopoiskId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('posterPath', instance.posterPath);
  val['overview'] = instance.overview;
  writeNotNull('releaseDate', instance.releaseDate?.toIso8601String());
  val['title'] = instance.title;
  writeNotNull('backdropPath', instance.backdropPath);
  val['rating'] = instance.rating.toJson();
  val['torrentsInfo'] = instance.torrentsInfo.map((e) => e.toJson()).toList();
  writeNotNull('youtubeTrailerKey', instance.youtubeTrailerKey);
  val['crew'] = instance.crew.map((e) => e.toJson()).toList();
  val['cast'] = instance.cast.map((e) => e.toJson()).toList();
  val['genres'] = instance.genres;
  val['productionCountries'] = instance.productionCountries;
  return val;
}

MovieRating _$MovieRatingFromJson(Map<String, dynamic> json) => MovieRating(
      imdbVoteAverage: (json['imdbVoteAverage'] as num).toDouble(),
      imdbVoteCount: (json['imdbVoteCount'] as num).toInt(),
      kinopoiskVoteAverage: (json['kinopoiskVoteAverage'] as num).toDouble(),
      kinopoiskVoteCount: (json['kinopoiskVoteCount'] as num).toInt(),
      tmdbVoteCount: (json['tmdbVoteCount'] as num).toInt(),
      tmdbVoteAverage: (json['tmdbVoteAverage'] as num).toDouble(),
    );

Map<String, dynamic> _$MovieRatingToJson(MovieRating instance) =>
    <String, dynamic>{
      'imdbVoteAverage': instance.imdbVoteAverage,
      'imdbVoteCount': instance.imdbVoteCount,
      'kinopoiskVoteAverage': instance.kinopoiskVoteAverage,
      'kinopoiskVoteCount': instance.kinopoiskVoteCount,
      'tmdbVoteCount': instance.tmdbVoteCount,
      'tmdbVoteAverage': instance.tmdbVoteAverage,
    };
