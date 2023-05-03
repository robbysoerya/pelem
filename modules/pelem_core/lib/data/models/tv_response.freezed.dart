// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tv_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TVResponse _$TVResponseFromJson(Map<String, dynamic> json) {
  return _TVResponse.fromJson(json);
}

/// @nodoc
mixin _$TVResponse {
  List<TVModel> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TVResponseCopyWith<TVResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TVResponseCopyWith<$Res> {
  factory $TVResponseCopyWith(
          TVResponse value, $Res Function(TVResponse) then) =
      _$TVResponseCopyWithImpl<$Res, TVResponse>;
  @useResult
  $Res call({List<TVModel> results});
}

/// @nodoc
class _$TVResponseCopyWithImpl<$Res, $Val extends TVResponse>
    implements $TVResponseCopyWith<$Res> {
  _$TVResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<TVModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TVResponseCopyWith<$Res>
    implements $TVResponseCopyWith<$Res> {
  factory _$$_TVResponseCopyWith(
          _$_TVResponse value, $Res Function(_$_TVResponse) then) =
      __$$_TVResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TVModel> results});
}

/// @nodoc
class __$$_TVResponseCopyWithImpl<$Res>
    extends _$TVResponseCopyWithImpl<$Res, _$_TVResponse>
    implements _$$_TVResponseCopyWith<$Res> {
  __$$_TVResponseCopyWithImpl(
      _$_TVResponse _value, $Res Function(_$_TVResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_$_TVResponse(
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<TVModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TVResponse implements _TVResponse {
  const _$_TVResponse({required final List<TVModel> results})
      : _results = results;

  factory _$_TVResponse.fromJson(Map<String, dynamic> json) =>
      _$$_TVResponseFromJson(json);

  final List<TVModel> _results;
  @override
  List<TVModel> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'TVResponse(results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TVResponse &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TVResponseCopyWith<_$_TVResponse> get copyWith =>
      __$$_TVResponseCopyWithImpl<_$_TVResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TVResponseToJson(
      this,
    );
  }
}

abstract class _TVResponse implements TVResponse {
  const factory _TVResponse({required final List<TVModel> results}) =
      _$_TVResponse;

  factory _TVResponse.fromJson(Map<String, dynamic> json) =
      _$_TVResponse.fromJson;

  @override
  List<TVModel> get results;
  @override
  @JsonKey(ignore: true)
  _$$_TVResponseCopyWith<_$_TVResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
