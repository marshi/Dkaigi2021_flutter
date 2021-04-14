import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'external_id.freezed.dart';

part 'external_id.g.dart';

@freezed
abstract class ExternalId with _$ExternalId {
  const ExternalId._();

  factory ExternalId.fromJson(Map<String, dynamic> json) =>
      _$ExternalIdFromJson(json);

  const factory ExternalId({
    required String value,
    required String serviceName,
  }) = _ExternalId;
}
