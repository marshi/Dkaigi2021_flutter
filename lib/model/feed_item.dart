import 'package:app/data/model/dkaigi/multi_language_title.dart';
import 'package:app/model/multi_language_text.dart';
import 'package:app/model/speaker.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'author.dart';
import 'image.dart';
import 'media.dart';

part 'feed_item.freezed.dart';

part 'feed_item.g.dart';

@freezed
abstract class FeedItem with _$FeedItem {
  const FeedItem._();

  const factory FeedItem({
    required String id,
    required Media media,
  }) = _FeedItem;

  const factory FeedItem.blog({
    @override required String id,
    required DateTime publishedAt,
    required Image image,
    @override required Medium media,
    required MultiLanguageText title,
    required MultiLanguageText summary,
    required String link,
    required String language,
    required Author author,
  }) = Blog;

  const factory FeedItem.video({
    @override required String id,
    required DateTime publishedAt,
    required Image image,
    @override required YouTube media,
    required MultiLanguageText title,
    required MultiLanguageText summary,
    required String link,
  }) = Video;

  const factory FeedItem.podcast({
    required String id,
    required DateTime publishedAt,
    required Image image,
    @override required Podcast media,
    required MultiLanguageText title,
    required MultiLanguageText summary,
    required String link,
    required List<Speaker> speakers,
    required String podcastLink,
  }) = Podcast;

  factory FeedItem.fromJson(Map<String, dynamic> json) =>
      _$FeedItemFromJson(json);
}
