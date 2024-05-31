import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'node.g.dart';

@JsonSerializable(explicitToJson: true)
class Node {
  final String id;
  final String type;
  final TextContent? text;
  final ImageContent? image;
  final Map<String, dynamic> attributes;

  Node({
    required this.id,
    required this.type,
    this.text,
    this.image,
    required this.attributes,
  });

  factory Node.fromJson(Map<String, dynamic> json) => _$NodeFromJson(json);

  Map<String, dynamic> toJson() => _$NodeToJson(this);

  @override
  String toString() => jsonEncode(toJson());
}

@JsonSerializable()
class TextContent {
  final String html;
  final String? text;

  TextContent({
    required this.html,
    this.text,
  });

  factory TextContent.fromJson(Map<String, dynamic> json) =>
      _$TextContentFromJson(json);

  Map<String, dynamic> toJson() => _$TextContentToJson(this);
  
  @override
  String toString() => jsonEncode(toJson());
}

@JsonSerializable()
class ImageContent {
  final String alt;
  final String assetId;

  ImageContent({
    required this.alt,
    required this.assetId,
  });

  factory ImageContent.fromJson(Map<String, dynamic> json) =>
      _$ImageContentFromJson(json);

  Map<String, dynamic> toJson() => _$ImageContentToJson(this);

  @override
  String toString() => jsonEncode(toJson());
}
