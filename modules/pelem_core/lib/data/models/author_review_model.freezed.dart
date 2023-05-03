// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'author_review_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthorReviewModel _$AuthorReviewModelFromJson(Map<String, dynamic> json) {
  return _AuthorReviewModel.fromJson(json);
}

/// @nodoc
mixin _$AuthorReviewModel {
  String get name => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String? get avatarPath => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthorReviewModelCopyWith<AuthorReviewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorReviewModelCopyWith<$Res> {
  factory $AuthorReviewModelCopyWith(
          AuthorReviewModel value, $Res Function(AuthorReviewModel) then) =
      _$AuthorReviewModelCopyWithImpl<$Res, AuthorReviewModel>;
  @useResult
  $Res call({String name, String username, String? avatarPath, double? rating});
}

/// @nodoc
class _$AuthorReviewModelCopyWithImpl<$Res, $Val extends AuthorReviewModel>
    implements $AuthorReviewModelCopyWith<$Res> {
  _$AuthorReviewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? username = null,
    Object? avatarPath = freezed,
    Object? rating = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      avatarPath: freezed == avatarPath
          ? _value.avatarPath
          : avatarPath // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthorReviewModelCopyWith<$Res>
    implements $AuthorReviewModelCopyWith<$Res> {
  factory _$$_AuthorReviewModelCopyWith(_$_AuthorReviewModel value,
          $Res Function(_$_AuthorReviewModel) then) =
      __$$_AuthorReviewModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String username, String? avatarPath, double? rating});
}

/// @nodoc
class __$$_AuthorReviewModelCopyWithImpl<$Res>
    extends _$AuthorReviewModelCopyWithImpl<$Res, _$_AuthorReviewModel>
    implements _$$_AuthorReviewModelCopyWith<$Res> {
  __$$_AuthorReviewModelCopyWithImpl(
      _$_AuthorReviewModel _value, $Res Function(_$_AuthorReviewModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? username = null,
    Object? avatarPath = freezed,
    Object? rating = freezed,
  }) {
    return _then(_$_AuthorReviewModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      avatarPath: freezed == avatarPath
          ? _value.avatarPath
          : avatarPath // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthorReviewModel implements _AuthorReviewModel {
  const _$_AuthorReviewModel(
      {required this.name,
      required this.username,
      required this.avatarPath,
      required this.rating});

  factory _$_AuthorReviewModel.fromJson(Map<String, dynamic> json) =>
      _$$_AuthorReviewModelFromJson(json);

  @override
  final String name;
  @override
  final String username;
  @override
  final String? avatarPath;
  @override
  final double? rating;

  @override
  String toString() {
    return 'AuthorReviewModel(name: $name, username: $username, avatarPath: $avatarPath, rating: $rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthorReviewModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.avatarPath, avatarPath) ||
                other.avatarPath == avatarPath) &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, username, avatarPath, rating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthorReviewModelCopyWith<_$_AuthorReviewModel> get copyWith =>
      __$$_AuthorReviewModelCopyWithImpl<_$_AuthorReviewModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthorReviewModelToJson(
      this,
    );
  }
}

abstract class _AuthorReviewModel implements AuthorReviewModel {
  const factory _AuthorReviewModel(
      {required final String name,
      required final String username,
      required final String? avatarPath,
      required final double? rating}) = _$_AuthorReviewModel;

  factory _AuthorReviewModel.fromJson(Map<String, dynamic> json) =
      _$_AuthorReviewModel.fromJson;

  @override
  String get name;
  @override
  String get username;
  @override
  String? get avatarPath;
  @override
  double? get rating;
  @override
  @JsonKey(ignore: true)
  _$$_AuthorReviewModelCopyWith<_$_AuthorReviewModel> get copyWith =>
      throw _privateConstructorUsedError;
}
