import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'multi_language_title.dart';

part 'feed_item.freezed.dart';
part 'feed_item.g.dart';

@freezed
abstract class FeedItem with _$FeedItem {
  const factory FeedItem({
    required String id,
    required MultiLanguageTitle title,
  }) = _FeedItem;

  factory FeedItem.fromJson(Map<String, dynamic> json) =>
      _$FeedItemFromJson(json);

// final String id;

// const FeedItem._(this.id);

// const factory FeedItem.success(T value) = Blog;
//
// const factory FeedItem.failure(Error value) = Video;
}

// class Blog extends FeedItem {
//   final T value;
//
//   const Blog(this.value) : super._();
// }
//
// class Video extends FeedItem {
//   final Error value;
//
//   const Video(this.value) : super._();
// }
