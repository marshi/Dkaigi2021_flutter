import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'multi_language_text.freezed.dart';

part 'multi_language_text.g.dart';

@freezed
abstract class MultiLanguageText with _$MultiLanguageText {
  const MultiLanguageText._();

  const factory MultiLanguageText({
    required String jaTitle,
    required String enTitle,
  }) = _MultiLanguageText;

  factory MultiLanguageText.fromJson(Map<String, dynamic> json) =>
      _$MultiLanguageTextFromJson(json);
}
