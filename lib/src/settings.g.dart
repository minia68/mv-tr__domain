// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Settings _$SettingsFromJson(Map<String, dynamic> json) => Settings(
      imageBaseUrl: json['imageBaseUrl'] as String?,
      chatId: json['chatId'] as String?,
      watchlistId: json['watchlistId'] as String?,
      trackerSettings: (json['trackerSettings'] as List<dynamic>?)
              ?.map((e) => TrackerSettings.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$SettingsToJson(Settings instance) => <String, dynamic>{
      'imageBaseUrl': instance.imageBaseUrl,
      'chatId': instance.chatId,
      'watchlistId': instance.watchlistId,
      'trackerSettings': instance.trackerSettings,
    };

TrackerSettings _$TrackerSettingsFromJson(Map<String, dynamic> json) =>
    TrackerSettings(
      trackerType: $enumDecode(_$TrackerTypeEnumMap, json['trackerType']),
      trackerUrl: json['trackerUrl'] as String,
      trackerRequest: json['trackerRequest'] as String,
      torrentsLimit: (json['torrentsLimit'] as num?)?.toInt() ?? 50,
    );

Map<String, dynamic> _$TrackerSettingsToJson(TrackerSettings instance) =>
    <String, dynamic>{
      'trackerType': _$TrackerTypeEnumMap[instance.trackerType]!,
      'trackerUrl': instance.trackerUrl,
      'trackerRequest': instance.trackerRequest,
      'torrentsLimit': instance.torrentsLimit,
    };

const _$TrackerTypeEnumMap = {
  TrackerType.rutor: 'rutor',
  TrackerType.nnmclub: 'nnmclub',
};
