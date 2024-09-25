import 'package:domain/src/movie_credits.dart';
import 'package:domain/src/movie_torrent_info.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie_info.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MovieInfo {
  final int tmdbId;
  final String imdbId;
  final String kinopoiskId;
  final String? posterPath;
  final String overview;
  final DateTime? releaseDate;
  final String title;
  final String? backdropPath;
  final MovieRating rating;
  final List<MovieTorrentInfo> torrentsInfo;
  final String? youtubeTrailerKey;
  final List<MovieCrew> crew;
  final List<MovieCast> cast;
  final List<String> genres;
  final List<String> productionCountries;

  MovieInfo({
    required this.tmdbId,
    required this.imdbId,
    required this.kinopoiskId,
    required this.posterPath,
    required this.overview,
    required this.releaseDate,
    required this.title,
    required this.backdropPath,
    required this.rating,
    required this.torrentsInfo,
    required this.youtubeTrailerKey,
    required this.cast,
    required this.crew,
    required this.productionCountries,
    required this.genres,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MovieInfo &&
          runtimeType == other.runtimeType &&
          imdbId == other.imdbId;

  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  int get hashCode => imdbId.hashCode;

  Map<String, dynamic> toJson() => _$MovieInfoToJson(this);
  factory MovieInfo.fromJson(Map<String, dynamic> json) =>
      _$MovieInfoFromJson(json);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MovieRating {
  double imdbVoteAverage;
  int imdbVoteCount;
  double kinopoiskVoteAverage;
  int kinopoiskVoteCount;
  int tmdbVoteCount;
  double tmdbVoteAverage;

  MovieRating({
    required this.imdbVoteAverage,
    required this.imdbVoteCount,
    required this.kinopoiskVoteAverage,
    required this.kinopoiskVoteCount,
    required this.tmdbVoteCount,
    required this.tmdbVoteAverage,
  });

  Map<String, dynamic> toJson() => _$MovieRatingToJson(this);

  factory MovieRating.fromJson(Map<String, dynamic> json) =>
      _$MovieRatingFromJson(json);
}
