import 'package:json_annotation/json_annotation.dart';

part 'settings.g.dart';

enum TrackerType {
  rutor,
  nnmclub,
}

@JsonSerializable()
class Settings {
  Settings({
    required this.tmdbApiKey,
    required this.imageBaseUrl,
    this.trackerSettings = const []
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

  final String? tmdbApiKey;
  final String? imageBaseUrl;
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
  });

  final TrackerType trackerType;
  final String trackerUrl;
  final String trackerRequest;

  String get id => trackerRequest + trackerUrl;

  Map<String, dynamic> toJson() => _$TrackerSettingsToJson(this);
  factory TrackerSettings.fromJson(Map<String, dynamic> json) =>
      _$TrackerSettingsFromJson(json);
}

//https://nnmclub.to/forum/tracker.php content-type:  application/x-www-form-urlencoded
// prev_sd=0&prev_a=0&prev_my=0&prev_n=0&prev_shc=0&prev_shf=1&prev_sha=1&prev_shs=0&prev_shr=0&prev_sht=0&f%5B%5D=954&o=1&s=2&tm=-1&shf=1&sha=1&ta=-1&sns=-1&sds=-1&nm=2160p&pn=&submit=%CF%EE%E8%F1%EA
