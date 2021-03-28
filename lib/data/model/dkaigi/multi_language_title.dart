import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'multi_language_title.freezed.dart';
part 'multi_language_title.g.dart';

@freezed
abstract class MultiLanguageTitle with _$MultiLanguageTitle {
  const factory MultiLanguageTitle({
    required String jaTitle,
    required String enTitle,
  }) = _MultiLanguageTitle;

  factory MultiLanguageTitle.fromJson(Map<String, dynamic> json) =>
      _$MultiLanguageTitleFromJson(json);
}
