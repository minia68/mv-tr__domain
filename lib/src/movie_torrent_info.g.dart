// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_torrent_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieTorrentInfo _$MovieTorrentInfoFromJson(Map<String, dynamic> json) =>
    MovieTorrentInfo(
      magnetUrl: json['magnetUrl'] as String,
      title: json['title'] as String,
      size: (json['size'] as num).toDouble(),
      seeders: (json['seeders'] as num).toInt(),
      leechers: (json['leechers'] as num).toInt(),
      audio: (json['audio'] as List<dynamic>).map((e) => e as String).toList(),
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$MovieTorrentInfoToJson(MovieTorrentInfo instance) =>
    <String, dynamic>{
      'magnetUrl': instance.magnetUrl,
      'title': instance.title,
      'size': instance.size,
      'seeders': instance.seeders,
      'leechers': instance.leechers,
      'audio': instance.audio,
      'date': instance.date.toIso8601String(),
    };
