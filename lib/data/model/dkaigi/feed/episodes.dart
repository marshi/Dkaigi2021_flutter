import 'package:app/data/model/dkaigi/feed/speakers.dart';

import '../thumbnail.dart';
import 'external_id.dart';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'episodes.freezed.dart';

part 'episodes.g.dart';

@freezed
abstract class Episodes with _$Episodes {
  const Episodes._();

  factory Episodes.fromJson(Map<String, dynamic> json) =>
      _$EpisodesFromJson(json);

  const factory Episodes({
    required String id,
    required ExternalId externalId,
    required String title,
    required String summary,
    required num duration,
    required String durationLabel,
    required List<Speakers> speakers,
    required Thumbnail thumbnail,
    required String link,
    required String publishedAt,
    required String status,
  }) = _Episodes;
}
