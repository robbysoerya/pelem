// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_review_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieReviewResponse _$MovieReviewResponseFromJson(Map<String, dynamic> json) {
  return _MovieReviewResponse.fromJson(json);
}

/// @nodoc
mixin _$MovieReviewResponse {
  List<MovieReviewModel> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieReviewResponseCopyWith<MovieReviewResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieReviewResponseCopyWith<$Res> {
  factory $MovieReviewResponseCopyWith(
          MovieReviewResponse value, $Res Function(MovieReviewResponse) then) =
      _$MovieReviewResponseCopyWithImpl<$Res, MovieReviewResponse>;
  @useResult
  $Res call({List<MovieReviewModel> results});
}

/// @nodoc
class _$MovieReviewResponseCopyWithImpl<$Res, $Val extends MovieReviewResponse>
    implements $MovieReviewResponseCopyWith<$Res> {
  _$MovieReviewResponseCopyWithImpl(this._value, this._then);

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
              as List<MovieReviewModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MovieReviewResponseCopyWith<$Res>
    implements $MovieReviewResponseCopyWith<$Res> {
  factory _$$_MovieReviewResponseCopyWith(_$_MovieReviewResponse value,
          $Res Function(_$_MovieReviewResponse) then) =
      __$$_MovieReviewResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MovieReviewModel> results});
}

/// @nodoc
class __$$_MovieReviewResponseCopyWithImpl<$Res>
    extends _$MovieReviewResponseCopyWithImpl<$Res, _$_MovieReviewResponse>
    implements _$$_MovieReviewResponseCopyWith<$Res> {
  __$$_MovieReviewResponseCopyWithImpl(_$_MovieReviewResponse _value,
      $Res Function(_$_MovieReviewResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_$_MovieReviewResponse(
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MovieReviewModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieReviewResponse implements _MovieReviewResponse {
  const _$_MovieReviewResponse({required final List<MovieReviewModel> results})
      : _results = results;

  factory _$_MovieReviewResponse.fromJson(Map<String, dynamic> json) =>
      _$$_MovieReviewResponseFromJson(json);

  final List<MovieReviewModel> _results;
  @override
  List<MovieReviewModel> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'MovieReviewResponse(results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieReviewResponse &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MovieReviewResponseCopyWith<_$_MovieReviewResponse> get copyWith =>
      __$$_MovieReviewResponseCopyWithImpl<_$_MovieReviewResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieReviewResponseToJson(
      this,
    );
  }
}

abstract class _MovieReviewResponse implements MovieReviewResponse {
  const factory _MovieReviewResponse(
      {required final List<MovieReviewModel> results}) = _$_MovieReviewResponse;

  factory _MovieReviewResponse.fromJson(Map<String, dynamic> json) =
      _$_MovieReviewResponse.fromJson;

  @override
  List<MovieReviewModel> get results;
  @override
  @JsonKey(ignore: true)
  _$$_MovieReviewResponseCopyWith<_$_MovieReviewResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
