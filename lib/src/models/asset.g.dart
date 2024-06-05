// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Asset _$AssetFromJson(Map<String, dynamic> json) => Asset(
      id: json['id'] as String?,
      originalFileName: json['originalFileName'] as String?,
      displayName: json['displayName'] as String?,
      contentType: json['contentType'] as String?,
      size: (json['size'] as num?)?.toInt(),
      siteId: json['siteId'] as String?,
      createdOn: json['createdOn'] == null
          ? null
          : DateTime.parse(json['createdOn'] as String),
      lastUpdated: json['lastUpdated'] == null
          ? null
          : DateTime.parse(json['lastUpdated'] as String),
      hostedUrl: json['hostedUrl'] as String?,
      variants: (json['variants'] as List<dynamic>?)
              ?.map((e) => Variant.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Variant>[],
    );

Map<String, dynamic> _$AssetToJson(Asset instance) => <String, dynamic>{
      'id': instance.id,
      'originalFileName': instance.originalFileName,
      'displayName': instance.displayName,
      'contentType': instance.contentType,
      'size': instance.size,
      'siteId': instance.siteId,
      'createdOn': instance.createdOn?.toIso8601String(),
      'lastUpdated': instance.lastUpdated?.toIso8601String(),
      'hostedUrl': instance.hostedUrl,
      'variants': instance.variants.map((e) => e.toJson()).toList(),
    };

Variant _$VariantFromJson(Map<String, dynamic> json) => Variant(
      hostedUrl: json['hostedUrl'] as String?,
      originalFileName: json['originalFileName'] as String?,
      displayName: json['displayName'] as String?,
      format: json['format'] as String?,
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      quality: (json['quality'] as num?)?.toInt(),
      error: json['error'] as String?,
    );

Map<String, dynamic> _$VariantToJson(Variant instance) => <String, dynamic>{
      'hostedUrl': instance.hostedUrl,
      'originalFileName': instance.originalFileName,
      'displayName': instance.displayName,
      'format': instance.format,
      'width': instance.width,
      'height': instance.height,
      'quality': instance.quality,
      'error': instance.error,
    };
