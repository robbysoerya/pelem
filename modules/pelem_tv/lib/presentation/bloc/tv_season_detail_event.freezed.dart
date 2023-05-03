// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tv_season_detail_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TVSeasonDetailEvent {
  int get id => throw _privateConstructorUsedError;
  int get season => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, int season) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, int season)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, int season)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TVSeasonDetailStarted value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TVSeasonDetailStarted value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TVSeasonDetailStarted value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TVSeasonDetailEventCopyWith<TVSeasonDetailEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TVSeasonDetailEventCopyWith<$Res> {
  factory $TVSeasonDetailEventCopyWith(
          TVSeasonDetailEvent value, $Res Function(TVSeasonDetailEvent) then) =
      _$TVSeasonDetailEventCopyWithImpl<$Res, TVSeasonDetailEvent>;
  @useResult
  $Res call({int id, int season});
}

/// @nodoc
class _$TVSeasonDetailEventCopyWithImpl<$Res, $Val extends TVSeasonDetailEvent>
    implements $TVSeasonDetailEventCopyWith<$Res> {
  _$TVSeasonDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? season = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      season: null == season
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TVSeasonDetailStartedCopyWith<$Res>
    implements $TVSeasonDetailEventCopyWith<$Res> {
  factory _$$TVSeasonDetailStartedCopyWith(_$TVSeasonDetailStarted value,
          $Res Function(_$TVSeasonDetailStarted) then) =
      __$$TVSeasonDetailStartedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int season});
}

/// @nodoc
class __$$TVSeasonDetailStartedCopyWithImpl<$Res>
    extends _$TVSeasonDetailEventCopyWithImpl<$Res, _$TVSeasonDetailStarted>
    implements _$$TVSeasonDetailStartedCopyWith<$Res> {
  __$$TVSeasonDetailStartedCopyWithImpl(_$TVSeasonDetailStarted _value,
      $Res Function(_$TVSeasonDetailStarted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? season = null,
  }) {
    return _then(_$TVSeasonDetailStarted(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == season
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TVSeasonDetailStarted implements TVSeasonDetailStarted {
  const _$TVSeasonDetailStarted(this.id, this.season);

  @override
  final int id;
  @override
  final int season;

  @override
  String toString() {
    return 'TVSeasonDetailEvent.started(id: $id, season: $season)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TVSeasonDetailStarted &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.season, season) || other.season == season));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, season);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TVSeasonDetailStartedCopyWith<_$TVSeasonDetailStarted> get copyWith =>
      __$$TVSeasonDetailStartedCopyWithImpl<_$TVSeasonDetailStarted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, int season) started,
  }) {
    return started(id, season);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, int season)? started,
  }) {
    return started?.call(id, season);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, int season)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(id, season);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TVSeasonDetailStarted value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TVSeasonDetailStarted value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TVSeasonDetailStarted value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class TVSeasonDetailStarted implements TVSeasonDetailEvent {
  const factory TVSeasonDetailStarted(final int id, final int season) =
      _$TVSeasonDetailStarted;

  @override
  int get id;
  @override
  int get season;
  @override
  @JsonKey(ignore: true)
  _$$TVSeasonDetailStartedCopyWith<_$TVSeasonDetailStarted> get copyWith =>
      throw _privateConstructorUsedError;
}
