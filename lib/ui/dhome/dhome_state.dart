import 'package:app/model/feed_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dhome_state.freezed.dart';

part 'dhome_state.g.dart';

@freezed
abstract class DhomeState with _$DhomeState {
  DhomeState._();

  factory DhomeState({
    required int id,
    required List<FeedItem> feedItems,
    required bool scrolled,
  }) = _DhomeState;

  factory DhomeState.fromJson(Map<String, dynamic> json) =>
      _$DhomeStateFromJson(json);
}
