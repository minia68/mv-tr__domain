// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Settings _$SettingsFromJson(Map<String, dynamic> json) => Settings(
      tmdbApiKey: json['tmdbApiKey'] as String?,
      imageBaseUrl: json['imageBaseUrl'] as String?,
      trackerSettings: (json['trackerSettings'] as List<dynamic>?)
              ?.map((e) => TrackerSettings.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$SettingsToJson(Settings instance) => <String, dynamic>{
      'tmdbApiKey': instance.tmdbApiKey,
      'imageBaseUrl': instance.imageBaseUrl,
      'trackerSettings': instance.trackerSettings,
    };

TrackerSettings _$TrackerSettingsFromJson(Map<String, dynamic> json) =>
    TrackerSettings(
      trackerType: $enumDecode(_$TrackerTypeEnumMap, json['trackerType']),
      trackerUrl: json['trackerUrl'] as String,
      trackerRequest: json['trackerRequest'] as String,
    );

Map<String, dynamic> _$TrackerSettingsToJson(TrackerSettings instance) =>
    <String, dynamic>{
      'trackerType': _$TrackerTypeEnumMap[instance.trackerType]!,
      'trackerUrl': instance.trackerUrl,
      'trackerRequest': instance.trackerRequest,
    };

const _$TrackerTypeEnumMap = {
  TrackerType.rutor: 'rutor',
  TrackerType.nnmclub: 'nnmclub',
};
