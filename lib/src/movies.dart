import 'package:domain/domain.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movies.g.dart';

@JsonSerializable()
class Movies {
  final List<MovieInfo> movies;
  final DateTime? lastUpdate;
  final String? imageBaseUrl;

  Movies({
    required this.movies,
    required this.lastUpdate,
    required this.imageBaseUrl,
  });

  
  Map<String, dynamic> toJson() => _$MoviesToJson(this);
  factory Movies.fromJson(Map<String, dynamic> json) =>
      _$MoviesFromJson(json);
}
