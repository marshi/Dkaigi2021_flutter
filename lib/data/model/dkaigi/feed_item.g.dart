// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FeedItem _$_$_FeedItemFromJson(Map<String, dynamic> json) {
  return _$_FeedItem(
    id: json['id'] as int,
    title: MultiLanguageTitle.fromJson(json['title'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_FeedItemToJson(_$_FeedItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
    };
