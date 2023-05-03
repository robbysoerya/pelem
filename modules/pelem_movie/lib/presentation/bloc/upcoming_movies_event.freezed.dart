// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upcoming_movies_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UpcomingMoviesEvent {
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
    required TResult Function(UpcomingMoviesStarted value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpcomingMoviesStarted value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpcomingMoviesStarted value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpcomingMoviesEventCopyWith<$Res> {
  factory $UpcomingMoviesEventCopyWith(
          UpcomingMoviesEvent value, $Res Function(UpcomingMoviesEvent) then) =
      _$UpcomingMoviesEventCopyWithImpl<$Res, UpcomingMoviesEvent>;
}

/// @nodoc
class _$UpcomingMoviesEventCopyWithImpl<$Res, $Val extends UpcomingMoviesEvent>
    implements $UpcomingMoviesEventCopyWith<$Res> {
  _$UpcomingMoviesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UpcomingMoviesStartedCopyWith<$Res> {
  factory _$$UpcomingMoviesStartedCopyWith(_$UpcomingMoviesStarted value,
          $Res Function(_$UpcomingMoviesStarted) then) =
      __$$UpcomingMoviesStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpcomingMoviesStartedCopyWithImpl<$Res>
    extends _$UpcomingMoviesEventCopyWithImpl<$Res, _$UpcomingMoviesStarted>
    implements _$$UpcomingMoviesStartedCopyWith<$Res> {
  __$$UpcomingMoviesStartedCopyWithImpl(_$UpcomingMoviesStarted _value,
      $Res Function(_$UpcomingMoviesStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpcomingMoviesStarted implements UpcomingMoviesStarted {
  const _$UpcomingMoviesStarted();

  @override
  String toString() {
    return 'UpcomingMoviesEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpcomingMoviesStarted);
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
    required TResult Function(UpcomingMoviesStarted value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpcomingMoviesStarted value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpcomingMoviesStarted value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class UpcomingMoviesStarted implements UpcomingMoviesEvent {
  const factory UpcomingMoviesStarted() = _$UpcomingMoviesStarted;
}
