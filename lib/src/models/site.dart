import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:webflow_client/src/models/custom_domain.dart';
import 'package:webflow_client/src/models/locale.dart';

part 'site.g.dart';

@JsonSerializable(explicitToJson: true)
class Site {
  final String id;
  final String workspaceId;
  final DateTime createdOn;
  final String displayName;
  final String shortName;
  final DateTime lastPublished;
  final String previewUrl;
  final String timeZone;
  final String? parentFolderId;
  final List<CustomDomain> customDomains;
  final Locales locales;

  Site({
    required this.id,
    required this.workspaceId,
    required this.createdOn,
    required this.displayName,
    required this.shortName,
    required this.lastPublished,
    required this.previewUrl,
    required this.timeZone,
    this.parentFolderId,
    required this.customDomains,
    required this.locales,
  });

  factory Site.fromJson(Map<String, dynamic> json) => _$SiteFromJson(json);

  Map<String, dynamic> toJson() => _$SiteToJson(this);

  @override
  String toString() => jsonEncode(toJson());
}
