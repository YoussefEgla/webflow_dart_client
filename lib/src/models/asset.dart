import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'asset.g.dart';

@JsonSerializable(explicitToJson: true)
class Asset {
  final String? id;
  final String? originalFileName;
  final String? displayName;
  final String? contentType;
  final int? size;
  final String? siteId;
  final DateTime? createdOn;
  final DateTime? lastUpdated;
  final String? hostedUrl;
  final List<Variant> variants;

  Asset({
    this.id,
    this.originalFileName,
    this.displayName,
    this.contentType,
    this.size,
    this.siteId,
    this.createdOn,
    this.lastUpdated,
    this.hostedUrl,
    this.variants = const <Variant>[],
  });

  factory Asset.fromJson(Map<String, dynamic> json) => _$AssetFromJson(json);

  Map<String, dynamic> toJson() => _$AssetToJson(this);

  @override
  String toString() => jsonEncode(toJson());
}

@JsonSerializable()
class Variant {
  final String? hostedUrl;
  final String? originalFileName;
  final String? displayName;
  final String? format;
  final int? width;
  final int? height;
  final int? quality;
  final String? error;

  Variant({
    this.hostedUrl,
    this.originalFileName,
    this.displayName,
    this.format,
    this.width,
    this.height,
    this.quality,
    this.error,
  });

  factory Variant.fromJson(Map<String, dynamic> json) =>
      _$VariantFromJson(json);

  Map<String, dynamic> toJson() => _$VariantToJson(this);

  @override
  String toString() => jsonEncode(toJson());
}
