import 'package:app/model/image.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'thumbnail.freezed.dart';

part 'thumbnail.g.dart';

@freezed
abstract class Thumbnail with _$Thumbnail {
  const Thumbnail._();

  const factory Thumbnail({
    required String smallUrl,
    required String standartUrl,
    required String largeUrl,
  }) = _Thumbnail;

  factory Thumbnail.fromJson(Map<String, dynamic> json) =>
      _$ThumbnailFromJson(json);

  Image toImage() {
    return Image(
      smallUrl: smallUrl,
      standardUrl: standartUrl,
      largeUrl: largeUrl,
    );
  }
}
