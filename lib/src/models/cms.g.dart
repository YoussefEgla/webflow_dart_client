// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cms.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Collection _$CollectionFromJson(Map<String, dynamic> json) => Collection(
      id: json['id'] as String,
      displayName: json['displayName'] as String?,
      singularName: json['singularName'] as String?,
      slug: json['slug'] as String?,
      createdOn: json['createdOn'] == null
          ? null
          : DateTime.parse(json['createdOn'] as String),
      lastUpdated: json['lastUpdated'] == null
          ? null
          : DateTime.parse(json['lastUpdated'] as String),
    );

Map<String, dynamic> _$CollectionToJson(Collection instance) =>
    <String, dynamic>{
      'id': instance.id,
      'displayName': instance.displayName,
      'singularName': instance.singularName,
      'slug': instance.slug,
      'createdOn': instance.createdOn?.toIso8601String(),
      'lastUpdated': instance.lastUpdated?.toIso8601String(),
    };

CollectionDetails _$CollectionDetailsFromJson(Map<String, dynamic> json) =>
    CollectionDetails(
      id: json['id'] as String,
      displayName: json['displayName'] as String?,
      singularName: json['singularName'] as String?,
      slug: json['slug'] as String?,
      createdOn: json['createdOn'] == null
          ? null
          : DateTime.parse(json['createdOn'] as String),
      lastUpdated: json['lastUpdated'] == null
          ? null
          : DateTime.parse(json['lastUpdated'] as String),
      fields: (json['fields'] as List<dynamic>)
          .map((e) => Field.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CollectionDetailsToJson(CollectionDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'displayName': instance.displayName,
      'singularName': instance.singularName,
      'slug': instance.slug,
      'createdOn': instance.createdOn?.toIso8601String(),
      'lastUpdated': instance.lastUpdated?.toIso8601String(),
      'fields': instance.fields.map((e) => e.toJson()).toList(),
    };

Field _$FieldFromJson(Map<String, dynamic> json) => Field(
      id: json['id'] as String,
      isEditable: json['isEditable'] as bool?,
      isRequired: json['isRequired'] as bool,
      type: json['type'] as String,
      slug: json['slug'] as String?,
      displayName: json['displayName'] as String,
      helpText: json['helpText'] as String?,
    );

Map<String, dynamic> _$FieldToJson(Field instance) => <String, dynamic>{
      'id': instance.id,
      'isEditable': instance.isEditable,
      'isRequired': instance.isRequired,
      'type': instance.type,
      'slug': instance.slug,
      'displayName': instance.displayName,
      'helpText': instance.helpText,
    };

Item _$ItemFromJson(Map<String, dynamic> json) => Item(
      id: json['id'] as String?,
      lastPublished: json['lastPublished'] == null
          ? null
          : DateTime.parse(json['lastPublished'] as String),
      lastUpdated: json['lastUpdated'] == null
          ? null
          : DateTime.parse(json['lastUpdated'] as String),
      createdOn: json['createdOn'] == null
          ? null
          : DateTime.parse(json['createdOn'] as String),
      isArchived: json['isArchived'] as bool? ?? false,
      isDraft: json['isDraft'] as bool? ?? false,
      fieldData: json['fieldData'] == null
          ? null
          : FieldData.fromJson(json['fieldData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      'id': instance.id,
      'lastPublished': instance.lastPublished?.toIso8601String(),
      'lastUpdated': instance.lastUpdated?.toIso8601String(),
      'createdOn': instance.createdOn?.toIso8601String(),
      'isArchived': instance.isArchived,
      'isDraft': instance.isDraft,
      'fieldData': instance.fieldData?.toJson(),
    };

FieldData _$FieldDataFromJson(Map<String, dynamic> json) => FieldData(
      url: json['url'] as String?,
      name: json['name'] as String?,
      department: json['department'] as String?,
      slug: json['slug'] as String?,
      thumbnailImage: json['thumbnailImage'] as String?,
      mainImage: json['mainImage'] as String?,
      postSummary: json['postSummary'] as String?,
      featured: json['featured'] as bool?,
    );

Map<String, dynamic> _$FieldDataToJson(FieldData instance) => <String, dynamic>{
      'url': instance.url,
      'name': instance.name,
      'department': instance.department,
      'slug': instance.slug,
      'thumbnailImage': instance.thumbnailImage,
      'mainImage': instance.mainImage,
      'postSummary': instance.postSummary,
      'featured': instance.featured,
    };
