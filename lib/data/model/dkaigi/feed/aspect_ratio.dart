import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'aspect_ratio.freezed.dart';

part 'aspect_ratio.g.dart';

@freezed
abstract class AspectRatio with _$AspectRatio {
  const AspectRatio._();

  factory AspectRatio.fromJson(Map<String, dynamic> json) =>
      _$AspectRatioFromJson(json);

  const factory AspectRatio({
    required int width,
    required int height,
  }) = _AspectRatio;
}
