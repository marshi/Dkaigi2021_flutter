import 'package:app/model/feed_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dhome_state.freezed.dart';

part 'dhome_state.g.dart';

@freezed
abstract class DhomeState with _$DhomeState {
  const DhomeState._();
  const factory DhomeState({required List<FeedItem> feedItems}) = _DhomeState;

  factory DhomeState.fromJson(Map<String, dynamic> json) =>
      _$DhomeStateFromJson(json);
}

