import 'package:json_annotation/json_annotation.dart';

part 'page.g.dart';

@JsonSerializable(explicitToJson: true)
class Page {
  final String id;
  final String siteId;
  final String? parentId;
  final String? collectionId;
  final String title;
  final String? slug;
  final DateTime createdOn;
  final DateTime lastUpdated;
  final bool archived;
  final bool draft;
  final bool canBranch;
  final Seo seo;
  final OpenGraph openGraph;

  Page({
    required this.id,
    required this.siteId,
    this.parentId,
    this.collectionId,
    required this.title,
    this.slug,
    required this.createdOn,
    required this.lastUpdated,
    required this.archived,
    required this.draft,
    required this.canBranch,
    required this.seo,
    required this.openGraph,
  });

  factory Page.fromJson(Map<String, dynamic> json) => _$PageFromJson(json);

  Map<String, dynamic> toJson() => _$PageToJson(this);
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
}

@JsonSerializable()
class OpenGraph {
  final String? title;
  final bool titleCopied;
  final String? description;
  final bool descriptionCopied;

  OpenGraph({
    required this.title,
    required this.titleCopied,
    required this.description,
    required this.descriptionCopied,
  });

  factory OpenGraph.fromJson(Map<String, dynamic> json) =>
      _$OpenGraphFromJson(json);

  Map<String, dynamic> toJson() => _$OpenGraphToJson(this);
}
