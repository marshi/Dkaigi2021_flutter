import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'feed_contents.freezed.dart';
part 'feed_contents.g.dart';

@freezed
abstract class FeedContents with _$FeedContents {
  const factory FeedContents({required Set<String> favorites}) = _FeedContents;

  factory FeedContents.fromJson(Map<String, dynamic> json) =>
      _$FeedContentsFromJson(json);
}
