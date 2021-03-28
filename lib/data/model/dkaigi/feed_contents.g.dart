// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_contents.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FeedContents _$_$_FeedContentsFromJson(Map<String, dynamic> json) {
  return _$_FeedContents(
    favorites:
        (json['favorites'] as List<dynamic>).map((e) => e as String).toSet(),
  );
}

Map<String, dynamic> _$_$_FeedContentsToJson(_$_FeedContents instance) =>
    <String, dynamic>{
      'favorites': instance.favorites.toList(),
    };
