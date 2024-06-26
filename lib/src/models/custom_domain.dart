import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'custom_domain.g.dart';

@JsonSerializable()
class CustomDomain {
  final String id;
  final String? url;

  CustomDomain({
    required this.id,
    this.url,
  });

  factory CustomDomain.fromJson(Map<String, dynamic> json) =>
      _$CustomDomainFromJson(json);

  Map<String, dynamic> toJson() => _$CustomDomainToJson(this);

  @override
  String toString() => jsonEncode(toJson());
}
