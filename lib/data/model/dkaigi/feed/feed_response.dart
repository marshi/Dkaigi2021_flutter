import 'package:app/data/model/dkaigi/feed/recordings.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'articles.dart';
import 'episodes.dart';

part 'feed_response.freezed.dart';
part 'feed_response.g.dart';

@freezed
abstract class FeedResponse with _$FeedResponse {
  const FeedResponse._();

  const factory FeedResponse({
    required String status,
    required List<Articles> articles,
    required List<Episodes> episodes,
    required List<Recordings> recordings,
  }) = _FeedResponse;

  factory FeedResponse.fromJson(Map<String, dynamic> json) =>
      _$FeedResponseFromJson(json);
}
