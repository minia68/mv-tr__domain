import 'package:json_annotation/json_annotation.dart';

part 'settings.g.dart';

enum TrackerType {
  rutor,
  nnmclub,
}

@JsonSerializable()
class Settings {
  Settings({
    required this.imageBaseUrl,
    required this.chatId,
    required this.watchlistId,
    this.trackerSettings = const [],
  }) {
    for (var i = 0; i < trackerSettings.length - 1; i++) {
      final ts = trackerSettings[i];
      for (var j = i + 1; j < trackerSettings.length; j++) {
        if (ts.id == trackerSettings[j].id) {
          throw new Exception('duplicate tracker settings pos: $i; $j');
        }
      }
    }
  }

  final String? imageBaseUrl;
  final String? chatId;
  final String? watchlistId;
  final List<TrackerSettings> trackerSettings;

  Map<String, dynamic> toJson() => _$SettingsToJson(this);
  factory Settings.fromJson(Map<String, dynamic> json) =>
      _$SettingsFromJson(json);
}

@JsonSerializable()
class TrackerSettings {
  TrackerSettings({
    required this.trackerType,
    required this.trackerUrl,
    required this.trackerRequest,
    int? torrentsLimit,
  }) : torrentsLimit = torrentsLimit ?? 50;

  final TrackerType trackerType;
  final String trackerUrl;
  final String trackerRequest;
  final int torrentsLimit;

  String get id => trackerRequest + trackerUrl;

  Map<String, dynamic> toJson() => _$TrackerSettingsToJson(this);
  factory TrackerSettings.fromJson(Map<String, dynamic> json) =>
      _$TrackerSettingsFromJson(json);
}
