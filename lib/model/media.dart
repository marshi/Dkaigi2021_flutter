import 'package:app/model/json_converter.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'media.freezed.dart';

part 'media.g.dart';

@freezed
abstract class Media with _$Media {
  // Media({required String str});

  abstract final String str;

  abstract final Color color;

  Media._();

  factory Media.youtube_(
    String str,
    @JsonKey(fromJson: ColorExt.fromColor, toJson: ColorExt.toJson) Color color,
  ) = YouTube;

  static final youtube = Media.youtube_("youtube", Colors.red) as YouTube;

  factory Media.droidKaigiFM_(
    String str,
    @JsonKey(fromJson: ColorExt.fromColor, toJson: ColorExt.toJson) Color color,
  ) = DroidKaigiFM;

  static final droidKaigiFM =
      Media.droidKaigiFM_("droidKaigiFM", Colors.greenAccent) as DroidKaigiFM;

  factory Media.medium_(
    String str,
    @JsonKey(fromJson: ColorExt.fromColor, toJson: ColorExt.toJson) Color color,
  ) = Medium;

  static final Medium medium = Media.medium_("medium", Colors.grey) as Medium;

  factory Media.other_(
    String str,
    @JsonKey(fromJson: ColorExt.fromColor, toJson: ColorExt.toJson) Color color,
  ) = Other;

  static final other = Media.other_("other", Colors.black12) as Other;

  factory Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);
}
