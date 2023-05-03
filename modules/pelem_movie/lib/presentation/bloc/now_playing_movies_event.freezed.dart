// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'now_playing_movies_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NowPlayingMoviesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NowPlayingMoviesStarted value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NowPlayingMoviesStarted value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NowPlayingMoviesStarted value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NowPlayingMoviesEventCopyWith<$Res> {
  factory $NowPlayingMoviesEventCopyWith(NowPlayingMoviesEvent value,
          $Res Function(NowPlayingMoviesEvent) then) =
      _$NowPlayingMoviesEventCopyWithImpl<$Res, NowPlayingMoviesEvent>;
}

/// @nodoc
class _$NowPlayingMoviesEventCopyWithImpl<$Res,
        $Val extends NowPlayingMoviesEvent>
    implements $NowPlayingMoviesEventCopyWith<$Res> {
  _$NowPlayingMoviesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NowPlayingMoviesStartedCopyWith<$Res> {
  factory _$$NowPlayingMoviesStartedCopyWith(_$NowPlayingMoviesStarted value,
          $Res Function(_$NowPlayingMoviesStarted) then) =
      __$$NowPlayingMoviesStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NowPlayingMoviesStartedCopyWithImpl<$Res>
    extends _$NowPlayingMoviesEventCopyWithImpl<$Res, _$NowPlayingMoviesStarted>
    implements _$$NowPlayingMoviesStartedCopyWith<$Res> {
  __$$NowPlayingMoviesStartedCopyWithImpl(_$NowPlayingMoviesStarted _value,
      $Res Function(_$NowPlayingMoviesStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NowPlayingMoviesStarted implements NowPlayingMoviesStarted {
  const _$NowPlayingMoviesStarted();

  @override
  String toString() {
    return 'NowPlayingMoviesEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NowPlayingMoviesStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NowPlayingMoviesStarted value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NowPlayingMoviesStarted value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NowPlayingMoviesStarted value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class NowPlayingMoviesStarted implements NowPlayingMoviesEvent {
  const factory NowPlayingMoviesStarted() = _$NowPlayingMoviesStarted;
}
