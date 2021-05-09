import 'package:app/model/feed_item.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dblog_state.freezed.dart';

part 'dblog_state.g.dart';

@freezed
abstract class DblogState with _$DblogState {
  const DblogState._();

  const factory DblogState({
    required List<Blog> blogItems,
  }) = _DblogState;

  factory DblogState.fromJson(Map<String, dynamic> json) =>
      _$DblogStateFromJson(json);
}
