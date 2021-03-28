// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'feed_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FeedItem _$FeedItemFromJson(Map<String, dynamic> json) {
  return _FeedItem.fromJson(json);
}

/// @nodoc
class _$FeedItemTearOff {
  const _$FeedItemTearOff();

  _FeedItem call({required String id, required MultiLanguageTitle title}) {
    return _FeedItem(
      id: id,
      title: title,
    );
  }

  FeedItem fromJson(Map<String, Object> json) {
    return FeedItem.fromJson(json);
  }
}

/// @nodoc
const $FeedItem = _$FeedItemTearOff();

/// @nodoc
mixin _$FeedItem {
  String get id => throw _privateConstructorUsedError;
  MultiLanguageTitle get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedItemCopyWith<FeedItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedItemCopyWith<$Res> {
  factory $FeedItemCopyWith(FeedItem value, $Res Function(FeedItem) then) =
      _$FeedItemCopyWithImpl<$Res>;
  $Res call({String id, MultiLanguageTitle title});

  $MultiLanguageTitleCopyWith<$Res> get title;
}

/// @nodoc
class _$FeedItemCopyWithImpl<$Res> implements $FeedItemCopyWith<$Res> {
  _$FeedItemCopyWithImpl(this._value, this._then);

  final FeedItem _value;
  // ignore: unused_field
  final $Res Function(FeedItem) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as MultiLanguageTitle,
    ));
  }

  @override
  $MultiLanguageTitleCopyWith<$Res> get title {
    return $MultiLanguageTitleCopyWith<$Res>(_value.title, (value) {
      return _then(_value.copyWith(title: value));
    });
  }
}

/// @nodoc
abstract class _$FeedItemCopyWith<$Res> implements $FeedItemCopyWith<$Res> {
  factory _$FeedItemCopyWith(_FeedItem value, $Res Function(_FeedItem) then) =
      __$FeedItemCopyWithImpl<$Res>;
  @override
  $Res call({String id, MultiLanguageTitle title});

  @override
  $MultiLanguageTitleCopyWith<$Res> get title;
}

/// @nodoc
class __$FeedItemCopyWithImpl<$Res> extends _$FeedItemCopyWithImpl<$Res>
    implements _$FeedItemCopyWith<$Res> {
  __$FeedItemCopyWithImpl(_FeedItem _value, $Res Function(_FeedItem) _then)
      : super(_value, (v) => _then(v as _FeedItem));

  @override
  _FeedItem get _value => super._value as _FeedItem;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_FeedItem(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as MultiLanguageTitle,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_FeedItem with DiagnosticableTreeMixin implements _FeedItem {
  const _$_FeedItem({required this.id, required this.title});

  factory _$_FeedItem.fromJson(Map<String, dynamic> json) =>
      _$_$_FeedItemFromJson(json);

  @override
  final String id;
  @override
  final MultiLanguageTitle title;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FeedItem(id: $id, title: $title)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FeedItem'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FeedItem &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title);

  @JsonKey(ignore: true)
  @override
  _$FeedItemCopyWith<_FeedItem> get copyWith =>
      __$FeedItemCopyWithImpl<_FeedItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FeedItemToJson(this);
  }
}

abstract class _FeedItem implements FeedItem {
  const factory _FeedItem(
      {required String id, required MultiLanguageTitle title}) = _$_FeedItem;

  factory _FeedItem.fromJson(Map<String, dynamic> json) = _$_FeedItem.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  MultiLanguageTitle get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FeedItemCopyWith<_FeedItem> get copyWith =>
      throw _privateConstructorUsedError;
}
