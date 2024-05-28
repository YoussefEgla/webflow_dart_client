// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'node.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Node _$NodeFromJson(Map<String, dynamic> json) => Node(
      id: json['id'] as String,
      type: json['type'] as String,
      text: json['text'] == null
          ? null
          : TextContent.fromJson(json['text'] as Map<String, dynamic>),
      image: json['image'] == null
          ? null
          : ImageContent.fromJson(json['image'] as Map<String, dynamic>),
      attributes: json['attributes'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$NodeToJson(Node instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'text': instance.text?.toJson(),
      'image': instance.image?.toJson(),
      'attributes': instance.attributes,
    };

TextContent _$TextContentFromJson(Map<String, dynamic> json) => TextContent(
      html: json['html'] as String,
      text: json['text'] as String?,
    );

Map<String, dynamic> _$TextContentToJson(TextContent instance) =>
    <String, dynamic>{
      'html': instance.html,
      'text': instance.text,
    };

ImageContent _$ImageContentFromJson(Map<String, dynamic> json) => ImageContent(
      alt: json['alt'] as String,
      assetId: json['assetId'] as String,
    );

Map<String, dynamic> _$ImageContentToJson(ImageContent instance) =>
    <String, dynamic>{
      'alt': instance.alt,
      'assetId': instance.assetId,
    };
