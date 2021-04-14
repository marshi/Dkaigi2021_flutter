import 'package:app/data/model/dkaigi/thumbnail.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'article.freezed.dart';
part 'article.g.dart';

@freezed
abstract class Article with _$Article {
  const Article._();

  const factory Article({
    required String id,
    required String title,
    required String summary,
    required String authorName,
    required String authorUrl,
    required Thumbnail thumbnail,
  }) = _Article;

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);
}
