import 'package:json_annotation/json_annotation.dart';

part 'movie_torrent_info.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MovieTorrentInfo {
  final String magnetUrl;
  final String title;
  final double size;
  final int seeders;
  final int leechers;
  final List<String> audio;
  final DateTime date;

  MovieTorrentInfo({
    required this.magnetUrl,
    required this.title,
    required this.size,
    required this.seeders,
    required this.leechers,
    required this.audio,
    required this.date,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MovieTorrentInfo &&
          runtimeType == other.runtimeType &&
          magnetUrl == other.magnetUrl &&
          title == other.title &&
          size == other.size &&
          seeders == other.seeders &&
          leechers == other.leechers;

  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  int get hashCode =>
      magnetUrl.hashCode ^
      title.hashCode ^
      size.hashCode ^
      seeders.hashCode ^
      leechers.hashCode;

  Map<String, dynamic> toJson() => _$MovieTorrentInfoToJson(this);
  factory MovieTorrentInfo.fromJson(Map<String, dynamic> json) =>
      _$MovieTorrentInfoFromJson(json);
}
