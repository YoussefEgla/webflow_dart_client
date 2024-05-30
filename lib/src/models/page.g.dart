// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Page _$PageFromJson(Map<String, dynamic> json) => Page(
      id: json['id'] as String,
      siteId: json['siteId'] as String,
      parentId: json['parentId'] as String?,
      collectionId: json['collectionId'] as String?,
      title: json['title'] as String,
      slug: json['slug'] as String?,
      createdOn: DateTime.parse(json['createdOn'] as String),
      lastUpdated: DateTime.parse(json['lastUpdated'] as String),
      archived: json['archived'] as bool,
      draft: json['draft'] as bool,
      canBranch: json['canBranch'] as bool,
      seo: Seo.fromJson(json['seo'] as Map<String, dynamic>),
      openGraph: OpenGraph.fromJson(json['openGraph'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PageToJson(Page instance) => <String, dynamic>{
      'id': instance.id,
      'siteId': instance.siteId,
      'parentId': instance.parentId,
      'collectionId': instance.collectionId,
      'title': instance.title,
      'slug': instance.slug,
      'createdOn': instance.createdOn.toIso8601String(),
      'lastUpdated': instance.lastUpdated.toIso8601String(),
      'archived': instance.archived,
      'draft': instance.draft,
      'canBranch': instance.canBranch,
      'seo': instance.seo.toJson(),
      'openGraph': instance.openGraph.toJson(),
    };

Seo _$SeoFromJson(Map<String, dynamic> json) => Seo(
      title: json['title'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$SeoToJson(Seo instance) => <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
    };

OpenGraph _$OpenGraphFromJson(Map<String, dynamic> json) => OpenGraph(
      title: json['title'] as String?,
      titleCopied: json['titleCopied'] as bool,
      description: json['description'] as String?,
      descriptionCopied: json['descriptionCopied'] as bool,
    );

Map<String, dynamic> _$OpenGraphToJson(OpenGraph instance) => <String, dynamic>{
      'title': instance.title,
      'titleCopied': instance.titleCopied,
      'description': instance.description,
      'descriptionCopied': instance.descriptionCopied,
    };
