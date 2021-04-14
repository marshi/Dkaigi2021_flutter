import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'title.freezed.dart';
part 'title.g.dart';

@freezed
abstract class Title with _$Title {
  const Title._();

  factory Title.fromJson(Map<String, dynamic> json) => _$TitleFromJson(json);

  const factory Title({
    required String japanese,
    required String english,
  }) = _Title;
}
