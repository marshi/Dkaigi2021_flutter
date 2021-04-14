import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'thumbnail.freezed.dart';
part 'thumbnail.g.dart';

@freezed
abstract class Thumbnail with _$Thumbnail {
  const Thumbnail._();

  factory Thumbnail.fromJson(Map<String, dynamic> json) =>
      _$ThumbnailFromJson(json);

  const factory Thumbnail({
    required String smallUrl,
    required String standardUrl,
    required String largeUrl,
  }) = _Thumbnail;
}
