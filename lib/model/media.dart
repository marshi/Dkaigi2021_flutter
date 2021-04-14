import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'media.freezed.dart';

part 'media.g.dart';

@freezed
abstract class Media with _$Media {
  // Media({required String str});

  Media._();

  factory Media.youtube_(String str) = YouTube;

  static final youtube = Media.youtube_("youtube") as YouTube;

  factory Media.droidKaigiFM_(String str) = DroidKaigiFM;

  static final droidKaigiFM =
      Media.droidKaigiFM_("droidKaigiFM") as DroidKaigiFM;

  factory Media.medium_(String str) = Medium;

  static final Medium medium = Media.medium_("medium") as Medium;

  factory Media.other_(String str) = Other;

  static final other = Media.other_("other") as Other;

  factory Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);
}
