// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_review_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieReviewModel _$MovieReviewModelFromJson(Map<String, dynamic> json) {
  return _MovieReviewModel.fromJson(json);
}

/// @nodoc
mixin _$MovieReviewModel {
  String get author => throw _privateConstructorUsedError;
  AuthorReviewModel get authorDetails => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieReviewModelCopyWith<MovieReviewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieReviewModelCopyWith<$Res> {
  factory $MovieReviewModelCopyWith(
          MovieReviewModel value, $Res Function(MovieReviewModel) then) =
      _$MovieReviewModelCopyWithImpl<$Res, MovieReviewModel>;
  @useResult
  $Res call(
      {String author,
      AuthorReviewModel authorDetails,
      String content,
      DateTime createdAt,
      String id,
      DateTime updatedAt,
      String url});

  $AuthorReviewModelCopyWith<$Res> get authorDetails;
}

/// @nodoc
class _$MovieReviewModelCopyWithImpl<$Res, $Val extends MovieReviewModel>
    implements $MovieReviewModelCopyWith<$Res> {
  _$MovieReviewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = null,
    Object? authorDetails = null,
    Object? content = null,
    Object? createdAt = null,
    Object? id = null,
    Object? updatedAt = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      authorDetails: null == authorDetails
          ? _value.authorDetails
          : authorDetails // ignore: cast_nullable_to_non_nullable
              as AuthorReviewModel,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthorReviewModelCopyWith<$Res> get authorDetails {
    return $AuthorReviewModelCopyWith<$Res>(_value.authorDetails, (value) {
      return _then(_value.copyWith(authorDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MovieReviewModelCopyWith<$Res>
    implements $MovieReviewModelCopyWith<$Res> {
  factory _$$_MovieReviewModelCopyWith(
          _$_MovieReviewModel value, $Res Function(_$_MovieReviewModel) then) =
      __$$_MovieReviewModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String author,
      AuthorReviewModel authorDetails,
      String content,
      DateTime createdAt,
      String id,
      DateTime updatedAt,
      String url});

  @override
  $AuthorReviewModelCopyWith<$Res> get authorDetails;
}

/// @nodoc
class __$$_MovieReviewModelCopyWithImpl<$Res>
    extends _$MovieReviewModelCopyWithImpl<$Res, _$_MovieReviewModel>
    implements _$$_MovieReviewModelCopyWith<$Res> {
  __$$_MovieReviewModelCopyWithImpl(
      _$_MovieReviewModel _value, $Res Function(_$_MovieReviewModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = null,
    Object? authorDetails = null,
    Object? content = null,
    Object? createdAt = null,
    Object? id = null,
    Object? updatedAt = null,
    Object? url = null,
  }) {
    return _then(_$_MovieReviewModel(
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      authorDetails: null == authorDetails
          ? _value.authorDetails
          : authorDetails // ignore: cast_nullable_to_non_nullable
              as AuthorReviewModel,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieReviewModel implements _MovieReviewModel {
  const _$_MovieReviewModel(
      {required this.author,
      required this.authorDetails,
      required this.content,
      required this.createdAt,
      required this.id,
      required this.updatedAt,
      required this.url});

  factory _$_MovieReviewModel.fromJson(Map<String, dynamic> json) =>
      _$$_MovieReviewModelFromJson(json);

  @override
  final String author;
  @override
  final AuthorReviewModel authorDetails;
  @override
  final String content;
  @override
  final DateTime createdAt;
  @override
  final String id;
  @override
  final DateTime updatedAt;
  @override
  final String url;

  @override
  String toString() {
    return 'MovieReviewModel(author: $author, authorDetails: $authorDetails, content: $content, createdAt: $createdAt, id: $id, updatedAt: $updatedAt, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieReviewModel &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.authorDetails, authorDetails) ||
                other.authorDetails == authorDetails) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, author, authorDetails, content,
      createdAt, id, updatedAt, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MovieReviewModelCopyWith<_$_MovieReviewModel> get copyWith =>
      __$$_MovieReviewModelCopyWithImpl<_$_MovieReviewModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieReviewModelToJson(
      this,
    );
  }
}

abstract class _MovieReviewModel implements MovieReviewModel {
  const factory _MovieReviewModel(
      {required final String author,
      required final AuthorReviewModel authorDetails,
      required final String content,
      required final DateTime createdAt,
      required final String id,
      required final DateTime updatedAt,
      required final String url}) = _$_MovieReviewModel;

  factory _MovieReviewModel.fromJson(Map<String, dynamic> json) =
      _$_MovieReviewModel.fromJson;

  @override
  String get author;
  @override
  AuthorReviewModel get authorDetails;
  @override
  String get content;
  @override
  DateTime get createdAt;
  @override
  String get id;
  @override
  DateTime get updatedAt;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_MovieReviewModelCopyWith<_$_MovieReviewModel> get copyWith =>
      throw _privateConstructorUsedError;
}
