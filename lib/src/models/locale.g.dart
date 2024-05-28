// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locale.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Locale _$LocaleFromJson(Map<String, dynamic> json) => Locale(
      id: json['id'] as String,
      cmsLocaleId: json['cmsLocaleId'] as String,
      enabled: json['enabled'] as bool,
      displayName: json['displayName'] as String,
      redirect: json['redirect'] as bool,
      subdirectory: json['subdirectory'] as String,
      tag: json['tag'] as String,
    );

Map<String, dynamic> _$LocaleToJson(Locale instance) => <String, dynamic>{
      'id': instance.id,
      'cmsLocaleId': instance.cmsLocaleId,
      'enabled': instance.enabled,
      'displayName': instance.displayName,
      'redirect': instance.redirect,
      'subdirectory': instance.subdirectory,
      'tag': instance.tag,
    };

Locales _$LocalesFromJson(Map<String, dynamic> json) => Locales(
      primary: Locale.fromJson(json['primary'] as Map<String, dynamic>),
      secondary: (json['secondary'] as List<dynamic>)
          .map((e) => Locale.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LocalesToJson(Locales instance) => <String, dynamic>{
      'primary': instance.primary.toJson(),
      'secondary': instance.secondary.map((e) => e.toJson()).toList(),
    };
