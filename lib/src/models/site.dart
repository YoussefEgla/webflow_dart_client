import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:webflow_client/src/models/custom_domain.dart';
import 'package:webflow_client/src/models/locale.dart';

part 'site.g.dart';

@JsonSerializable(explicitToJson: true)
class Site {
  final String id;
  final String? workspaceId;
  final DateTime? createdOn;
  final String? displayName;
  final String? shortName;
  final DateTime? lastPublished;
  final String? previewUrl;
  final String? timeZone;
  final String? parentFolderId;
  final List<CustomDomain> customDomains;
  final Locales? locales;

  Site({
    required this.id,
    this.workspaceId,
    this.createdOn,
    this.displayName,
    this.shortName,
    this.lastPublished,
    this.previewUrl,
    this.timeZone,
    this.parentFolderId,
    this.customDomains = const <CustomDomain>[],
    this.locales,
  });

  factory Site.fromJson(Map<String, dynamic> json) => _$SiteFromJson(json);

  Map<String, dynamic> toJson() => _$SiteToJson(this);

  @override
  String toString() => jsonEncode(toJson());
}
