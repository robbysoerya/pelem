// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_review_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MovieReviewEvent {
  int get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieReviewStarted value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MovieReviewStarted value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieReviewStarted value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieReviewEventCopyWith<MovieReviewEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieReviewEventCopyWith<$Res> {
  factory $MovieReviewEventCopyWith(
          MovieReviewEvent value, $Res Function(MovieReviewEvent) then) =
      _$MovieReviewEventCopyWithImpl<$Res, MovieReviewEvent>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$MovieReviewEventCopyWithImpl<$Res, $Val extends MovieReviewEvent>
    implements $MovieReviewEventCopyWith<$Res> {
  _$MovieReviewEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieReviewStartedCopyWith<$Res>
    implements $MovieReviewEventCopyWith<$Res> {
  factory _$$MovieReviewStartedCopyWith(_$MovieReviewStarted value,
          $Res Function(_$MovieReviewStarted) then) =
      __$$MovieReviewStartedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$MovieReviewStartedCopyWithImpl<$Res>
    extends _$MovieReviewEventCopyWithImpl<$Res, _$MovieReviewStarted>
    implements _$$MovieReviewStartedCopyWith<$Res> {
  __$$MovieReviewStartedCopyWithImpl(
      _$MovieReviewStarted _value, $Res Function(_$MovieReviewStarted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$MovieReviewStarted(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MovieReviewStarted implements MovieReviewStarted {
  const _$MovieReviewStarted(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'MovieReviewEvent.started(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieReviewStarted &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieReviewStartedCopyWith<_$MovieReviewStarted> get copyWith =>
      __$$MovieReviewStartedCopyWithImpl<_$MovieReviewStarted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) started,
  }) {
    return started(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? started,
  }) {
    return started?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieReviewStarted value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MovieReviewStarted value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieReviewStarted value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class MovieReviewStarted implements MovieReviewEvent {
  const factory MovieReviewStarted(final int id) = _$MovieReviewStarted;

  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$MovieReviewStartedCopyWith<_$MovieReviewStarted> get copyWith =>
      throw _privateConstructorUsedError;
}
