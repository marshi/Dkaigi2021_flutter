// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'feed_contents.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FeedContents _$FeedContentsFromJson(Map<String, dynamic> json) {
  return _FeedContents.fromJson(json);
}

/// @nodoc
class _$FeedContentsTearOff {
  const _$FeedContentsTearOff();

  _FeedContents call({required Set<String> favorites}) {
    return _FeedContents(
      favorites: favorites,
    );
  }

  FeedContents fromJson(Map<String, Object> json) {
    return FeedContents.fromJson(json);
  }
}

/// @nodoc
const $FeedContents = _$FeedContentsTearOff();

/// @nodoc
mixin _$FeedContents {
  Set<String> get favorites => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedContentsCopyWith<FeedContents> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedContentsCopyWith<$Res> {
  factory $FeedContentsCopyWith(
          FeedContents value, $Res Function(FeedContents) then) =
      _$FeedContentsCopyWithImpl<$Res>;
  $Res call({Set<String> favorites});
}

/// @nodoc
class _$FeedContentsCopyWithImpl<$Res> implements $FeedContentsCopyWith<$Res> {
  _$FeedContentsCopyWithImpl(this._value, this._then);

  final FeedContents _value;
  // ignore: unused_field
  final $Res Function(FeedContents) _then;

  @override
  $Res call({
    Object? favorites = freezed,
  }) {
    return _then(_value.copyWith(
      favorites: favorites == freezed
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ));
  }
}

/// @nodoc
abstract class _$FeedContentsCopyWith<$Res>
    implements $FeedContentsCopyWith<$Res> {
  factory _$FeedContentsCopyWith(
          _FeedContents value, $Res Function(_FeedContents) then) =
      __$FeedContentsCopyWithImpl<$Res>;
  @override
  $Res call({Set<String> favorites});
}

/// @nodoc
class __$FeedContentsCopyWithImpl<$Res> extends _$FeedContentsCopyWithImpl<$Res>
    implements _$FeedContentsCopyWith<$Res> {
  __$FeedContentsCopyWithImpl(
      _FeedContents _value, $Res Function(_FeedContents) _then)
      : super(_value, (v) => _then(v as _FeedContents));

  @override
  _FeedContents get _value => super._value as _FeedContents;

  @override
  $Res call({
    Object? favorites = freezed,
  }) {
    return _then(_FeedContents(
      favorites: favorites == freezed
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_FeedContents with DiagnosticableTreeMixin implements _FeedContents {
  const _$_FeedContents({required this.favorites});

  factory _$_FeedContents.fromJson(Map<String, dynamic> json) =>
      _$_$_FeedContentsFromJson(json);

  @override
  final Set<String> favorites;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FeedContents(favorites: $favorites)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FeedContents'))
      ..add(DiagnosticsProperty('favorites', favorites));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FeedContents &&
            (identical(other.favorites, favorites) ||
                const DeepCollectionEquality()
                    .equals(other.favorites, favorites)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(favorites);

  @JsonKey(ignore: true)
  @override
  _$FeedContentsCopyWith<_FeedContents> get copyWith =>
      __$FeedContentsCopyWithImpl<_FeedContents>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FeedContentsToJson(this);
  }
}

abstract class _FeedContents implements FeedContents {
  const factory _FeedContents({required Set<String> favorites}) =
      _$_FeedContents;

  factory _FeedContents.fromJson(Map<String, dynamic> json) =
      _$_FeedContents.fromJson;

  @override
  Set<String> get favorites => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FeedContentsCopyWith<_FeedContents> get copyWith =>
      throw _privateConstructorUsedError;
}
