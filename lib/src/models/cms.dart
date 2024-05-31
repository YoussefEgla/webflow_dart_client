import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'cms.g.dart';

@JsonSerializable()
class Collection {
  final String id;
  final String displayName;
  final String singularName;
  final String slug;
  final DateTime createdOn;
  final DateTime lastUpdated;

  Collection({
    required this.id,
    required this.displayName,
    required this.singularName,
    required this.slug,
    required this.createdOn,
    required this.lastUpdated,
  });

  factory Collection.fromJson(Map<String, dynamic> json) =>
      _$CollectionFromJson(json);

  Map<String, dynamic> toJson() => _$CollectionToJson(this);

  @override
  String toString() => jsonEncode(toJson());
}

@JsonSerializable(explicitToJson: true)
class CollectionDetails extends Collection {
  final List<Field> fields;

  CollectionDetails({
    required super.id,
    required super.displayName,
    required super.singularName,
    required super.slug,
    required super.createdOn,
    required super.lastUpdated,
    required this.fields,
  });

  factory CollectionDetails.fromJson(Map<String, dynamic> json) =>
      _$CollectionDetailsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CollectionDetailsToJson(this);

  @override
  String toString() => jsonEncode(toJson());
}

@JsonSerializable()
class Field {
  final String id;
  final bool isEditable;
  final bool isRequired;
  final String type;
  final String slug;
  final String displayName;
  final String? helpText;

  Field({
    required this.id,
    required this.isEditable,
    required this.isRequired,
    required this.type,
    required this.slug,
    required this.displayName,
    this.helpText,
  });

  factory Field.fromJson(Map<String, dynamic> json) => _$FieldFromJson(json);

  Map<String, dynamic> toJson() => _$FieldToJson(this);

  @override
  String toString() => jsonEncode(toJson());
}

@JsonSerializable(explicitToJson: true)
class Item {
  final String id;
  final DateTime lastPublished;
  final DateTime lastUpdated;
  final DateTime createdOn;
  final bool isArchived;
  final bool isDraft;
  final FieldData fieldData;

  Item({
    required this.id,
    required this.lastPublished,
    required this.lastUpdated,
    required this.createdOn,
    required this.isArchived,
    required this.isDraft,
    required this.fieldData,
  });

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  Map<String, dynamic> toJson() => _$ItemToJson(this);

  @override
  String toString() => jsonEncode(toJson());
}

@JsonSerializable()
class FieldData {
  final String? url;
  final String? name;
  final String? department;
  final String? slug;
  final String? thumbnailImage;
  final String? mainImage;
  final String? postSummary;
  final bool? featured;

  FieldData({
    this.url,
    this.name,
    this.department,
    this.slug,
    this.thumbnailImage,
    this.mainImage,
    this.postSummary,
    this.featured,
  });

  factory FieldData.fromJson(Map<String, dynamic> json) =>
      _$FieldDataFromJson(json);

  Map<String, dynamic> toJson() => _$FieldDataToJson(this);
  
  @override
  String toString() => jsonEncode(toJson());
}
