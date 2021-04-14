import 'package:app/data/model/dkaigi/feed/title.dart';

import '../thumbnail.dart';
import 'aspect_ratio.dart';
import 'external_id.dart';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recordings.freezed.dart';
part 'recordings.g.dart';

@freezed
abstract class Recordings with _$Recordings {
  const Recordings._();

  const factory Recordings({
    required String id,
    required ExternalId externalId,
    required Title title,
    required Title summary,
    required Thumbnail thumbnail,
    required AspectRatio aspectRatio,
    required String link,
    required String publishedAt,
    required String status,
    required String language,
  }) = _Recordings;

  factory Recordings.fromJson(Map<String, dynamic> json) =>
      _$RecordingsFromJson(json);
}
