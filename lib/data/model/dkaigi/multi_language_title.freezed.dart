// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'multi_language_title.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MultiLanguageTitle _$MultiLanguageTitleFromJson(Map<String, dynamic> json) {
  return _MultiLanguageTitle.fromJson(json);
}

/// @nodoc
class _$MultiLanguageTitleTearOff {
  const _$MultiLanguageTitleTearOff();

  _MultiLanguageTitle call({required String jaTitle, required String enTitle}) {
    return _MultiLanguageTitle(
      jaTitle: jaTitle,
      enTitle: enTitle,
    );
  }

  MultiLanguageTitle fromJson(Map<String, Object> json) {
    return MultiLanguageTitle.fromJson(json);
  }
}

/// @nodoc
const $MultiLanguageTitle = _$MultiLanguageTitleTearOff();

/// @nodoc
mixin _$MultiLanguageTitle {
  String get jaTitle => throw _privateConstructorUsedError;
  String get enTitle => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MultiLanguageTitleCopyWith<MultiLanguageTitle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultiLanguageTitleCopyWith<$Res> {
  factory $MultiLanguageTitleCopyWith(
          MultiLanguageTitle value, $Res Function(MultiLanguageTitle) then) =
      _$MultiLanguageTitleCopyWithImpl<$Res>;
  $Res call({String jaTitle, String enTitle});
}

/// @nodoc
class _$MultiLanguageTitleCopyWithImpl<$Res>
    implements $MultiLanguageTitleCopyWith<$Res> {
  _$MultiLanguageTitleCopyWithImpl(this._value, this._then);

  final MultiLanguageTitle _value;
  // ignore: unused_field
  final $Res Function(MultiLanguageTitle) _then;

  @override
  $Res call({
    Object? jaTitle = freezed,
    Object? enTitle = freezed,
  }) {
    return _then(_value.copyWith(
      jaTitle: jaTitle == freezed
          ? _value.jaTitle
          : jaTitle // ignore: cast_nullable_to_non_nullable
              as String,
      enTitle: enTitle == freezed
          ? _value.enTitle
          : enTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$MultiLanguageTitleCopyWith<$Res>
    implements $MultiLanguageTitleCopyWith<$Res> {
  factory _$MultiLanguageTitleCopyWith(
          _MultiLanguageTitle value, $Res Function(_MultiLanguageTitle) then) =
      __$MultiLanguageTitleCopyWithImpl<$Res>;
  @override
  $Res call({String jaTitle, String enTitle});
}

/// @nodoc
class __$MultiLanguageTitleCopyWithImpl<$Res>
    extends _$MultiLanguageTitleCopyWithImpl<$Res>
    implements _$MultiLanguageTitleCopyWith<$Res> {
  __$MultiLanguageTitleCopyWithImpl(
      _MultiLanguageTitle _value, $Res Function(_MultiLanguageTitle) _then)
      : super(_value, (v) => _then(v as _MultiLanguageTitle));

  @override
  _MultiLanguageTitle get _value => super._value as _MultiLanguageTitle;

  @override
  $Res call({
    Object? jaTitle = freezed,
    Object? enTitle = freezed,
  }) {
    return _then(_MultiLanguageTitle(
      jaTitle: jaTitle == freezed
          ? _value.jaTitle
          : jaTitle // ignore: cast_nullable_to_non_nullable
              as String,
      enTitle: enTitle == freezed
          ? _value.enTitle
          : enTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_MultiLanguageTitle
    with DiagnosticableTreeMixin
    implements _MultiLanguageTitle {
  const _$_MultiLanguageTitle({required this.jaTitle, required this.enTitle});

  factory _$_MultiLanguageTitle.fromJson(Map<String, dynamic> json) =>
      _$_$_MultiLanguageTitleFromJson(json);

  @override
  final String jaTitle;
  @override
  final String enTitle;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MultiLanguageTitle(jaTitle: $jaTitle, enTitle: $enTitle)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MultiLanguageTitle'))
      ..add(DiagnosticsProperty('jaTitle', jaTitle))
      ..add(DiagnosticsProperty('enTitle', enTitle));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MultiLanguageTitle &&
            (identical(other.jaTitle, jaTitle) ||
                const DeepCollectionEquality()
                    .equals(other.jaTitle, jaTitle)) &&
            (identical(other.enTitle, enTitle) ||
                const DeepCollectionEquality().equals(other.enTitle, enTitle)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(jaTitle) ^
      const DeepCollectionEquality().hash(enTitle);

  @JsonKey(ignore: true)
  @override
  _$MultiLanguageTitleCopyWith<_MultiLanguageTitle> get copyWith =>
      __$MultiLanguageTitleCopyWithImpl<_MultiLanguageTitle>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MultiLanguageTitleToJson(this);
  }
}

abstract class _MultiLanguageTitle implements MultiLanguageTitle {
  const factory _MultiLanguageTitle(
      {required String jaTitle,
      required String enTitle}) = _$_MultiLanguageTitle;

  factory _MultiLanguageTitle.fromJson(Map<String, dynamic> json) =
      _$_MultiLanguageTitle.fromJson;

  @override
  String get jaTitle => throw _privateConstructorUsedError;
  @override
  String get enTitle => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MultiLanguageTitleCopyWith<_MultiLanguageTitle> get copyWith =>
      throw _privateConstructorUsedError;
}
