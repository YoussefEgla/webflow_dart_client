import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'locale.g.dart';

@JsonSerializable()
class Locale {
  final String id;
  final String cmsLocaleId;
  final bool enabled;
  final String displayName;
  final bool redirect;
  final String subdirectory;
  final String tag;

  Locale({
    required this.id,
    required this.cmsLocaleId,
    required this.enabled,
    required this.displayName,
    required this.redirect,
    required this.subdirectory,
    required this.tag,
  });

  factory Locale.fromJson(Map<String, dynamic> json) => _$LocaleFromJson(json);

  Map<String, dynamic> toJson() => _$LocaleToJson(this);
  @override
  String toString() => jsonEncode(toJson());
}

@JsonSerializable(explicitToJson: true)
class Locales {
  final Locale primary;
  final List<Locale> secondary;

  Locales({
    required this.primary,
    required this.secondary,
  });

  factory Locales.fromJson(Map<String, dynamic> json) =>
      _$LocalesFromJson(json);

  Map<String, dynamic> toJson() => _$LocalesToJson(this);

  @override
  String toString() => jsonEncode(toJson());
}
