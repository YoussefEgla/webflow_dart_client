import 'package:json_annotation/json_annotation.dart';

part 'asset.g.dart';

@JsonSerializable(explicitToJson: true)
class Asset {
  final String id;
  final String originalFileName;
  final String displayName;
  final String contentType;
  final int size;
  final String siteId;
  final DateTime createdOn;
  final DateTime lastUpdated;
  final String hostedUrl;
  final List<Variant> variants;

  Asset({
    required this.id,
    required this.originalFileName,
    required this.displayName,
    required this.contentType,
    required this.size,
    required this.siteId,
    required this.createdOn,
    required this.lastUpdated,
    required this.hostedUrl,
    required this.variants,
  });

  factory Asset.fromJson(Map<String, dynamic> json) => _$AssetFromJson(json);

  Map<String, dynamic> toJson() => _$AssetToJson(this);
}

@JsonSerializable()
class Variant {
  final String hostedUrl;
  final String originalFileName;
  final String displayName;
  final String format;
  final int width;
  final int? height;
  final int quality;
  final String? error;

  Variant({
    required this.hostedUrl,
    required this.originalFileName,
    required this.displayName,
    required this.format,
    required this.width,
    this.height,
    required this.quality,
    this.error,
  });

  factory Variant.fromJson(Map<String, dynamic> json) =>
      _$VariantFromJson(json);

  Map<String, dynamic> toJson() => _$VariantToJson(this);
}
