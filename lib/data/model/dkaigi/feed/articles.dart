import '../thumbnail.dart';
import 'external_id.dart';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'articles.freezed.dart';

part 'articles.g.dart';

@freezed
abstract class Articles with _$Articles {
  const Articles._();

  factory Articles.fromJson(Map<String, dynamic> json) =>
      _$ArticlesFromJson(json);

  const factory Articles({
    required String id,
    required ExternalId externalId,
    required String title,
    required String summary,
    required String authorName,
    required String authorUrl,
    required Thumbnail thumbnail,
    required String link,
    required String publishedAt,
    required String status,
    required String language,
  }) = _Articles;
}
