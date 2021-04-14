import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'image.freezed.dart';

part 'image.g.dart';

@freezed
abstract class Image with _$Image {
  const Image._();

  const factory Image({
    required String smallUrl,
    required String standardUrl,
    required String largeUrl,
  }) = _Image;

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
}
