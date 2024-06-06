import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'page.g.dart';

@JsonSerializable(explicitToJson: true)
class Page {
  final String? id;
  final String? siteId;
  final String? parentId;
  final String? collectionId;
  final String? title;
  final String? slug;
  final DateTime? createdOn;
  final DateTime? lastUpdated;
  final bool? archived;
  final bool? draft;
  final bool? canBranch;
  final Seo? seo;
  final OpenGraph? openGraph;

  Page({
    this.id,
    this.siteId,
    this.parentId,
    this.collectionId,
    this.title,
    this.slug,
    this.createdOn,
    this.lastUpdated,
    this.archived,
    this.draft,
    this.canBranch,
    this.seo,
    this.openGraph,
  });

  factory Page.fromJson(Map<String, dynamic> json) => _$PageFromJson(json);

  Map<String, dynamic> toJson() => _$PageToJson(this);

  @override
  String toString() => jsonEncode(toJson());
}

@JsonSerializable()
class Seo {
  final String? title;
  final String? description;

  Seo({
    this.title,
    this.description,
  });

  factory Seo.fromJson(Map<String, dynamic> json) => _$SeoFromJson(json);

  Map<String, dynamic> toJson() => _$SeoToJson(this);

  @override
  String toString() => jsonEncode(toJson());
}

@JsonSerializable()
class OpenGraph {
  final String? title;
  final bool? titleCopied;
  final String? description;
  final bool? descriptionCopied;

  OpenGraph({
    this.title,
    this.titleCopied,
    this.description,
    this.descriptionCopied,
  });

  factory OpenGraph.fromJson(Map<String, dynamic> json) =>
      _$OpenGraphFromJson(json);

  Map<String, dynamic> toJson() => _$OpenGraphToJson(this);

  @override
  String toString() => jsonEncode(toJson());
}
