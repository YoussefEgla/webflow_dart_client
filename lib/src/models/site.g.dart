// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'site.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Site _$SiteFromJson(Map<String, dynamic> json) => Site(
      id: json['id'] as String,
      workspaceId: json['workspaceId'] as String?,
      createdOn: json['createdOn'] == null
          ? null
          : DateTime.parse(json['createdOn'] as String),
      displayName: json['displayName'] as String?,
      shortName: json['shortName'] as String?,
      lastPublished: json['lastPublished'] == null
          ? null
          : DateTime.parse(json['lastPublished'] as String),
      previewUrl: json['previewUrl'] as String?,
      timeZone: json['timeZone'] as String?,
      parentFolderId: json['parentFolderId'] as String?,
      customDomains: (json['customDomains'] as List<dynamic>?)
              ?.map((e) => CustomDomain.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <CustomDomain>[],
      locales: json['locales'] == null
          ? null
          : Locales.fromJson(json['locales'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SiteToJson(Site instance) => <String, dynamic>{
      'id': instance.id,
      'workspaceId': instance.workspaceId,
      'createdOn': instance.createdOn?.toIso8601String(),
      'displayName': instance.displayName,
      'shortName': instance.shortName,
      'lastPublished': instance.lastPublished?.toIso8601String(),
      'previewUrl': instance.previewUrl,
      'timeZone': instance.timeZone,
      'parentFolderId': instance.parentFolderId,
      'customDomains': instance.customDomains.map((e) => e.toJson()).toList(),
      'locales': instance.locales?.toJson(),
    };
