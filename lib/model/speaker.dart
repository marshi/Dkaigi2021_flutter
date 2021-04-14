import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'speaker.freezed.dart';

part 'speaker.g.dart';

@freezed
abstract class Speaker with _$Speaker {
  const Speaker._();

  const factory Speaker({
    required String name,
    required String iconUrl,
  }) = _Speaker;

  factory Speaker.fromJson(Map<String, dynamic> json) =>
      _$SpeakerFromJson(json);
}
