// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tv_review_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TVReviewModel _$TVReviewModelFromJson(Map<String, dynamic> json) {
  return _TVReviewModel.fromJson(json);
}

/// @nodoc
mixin _$TVReviewModel {
  String get author => throw _privateConstructorUsedError;
  AuthorReviewModel get authorDetails => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TVReviewModelCopyWith<TVReviewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TVReviewModelCopyWith<$Res> {
  factory $TVReviewModelCopyWith(
          TVReviewModel value, $Res Function(TVReviewModel) then) =
      _$TVReviewModelCopyWithImpl<$Res, TVReviewModel>;
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
class _$TVReviewModelCopyWithImpl<$Res, $Val extends TVReviewModel>
    implements $TVReviewModelCopyWith<$Res> {
  _$TVReviewModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_TVReviewModelCopyWith<$Res>
    implements $TVReviewModelCopyWith<$Res> {
  factory _$$_TVReviewModelCopyWith(
          _$_TVReviewModel value, $Res Function(_$_TVReviewModel) then) =
      __$$_TVReviewModelCopyWithImpl<$Res>;
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
class __$$_TVReviewModelCopyWithImpl<$Res>
    extends _$TVReviewModelCopyWithImpl<$Res, _$_TVReviewModel>
    implements _$$_TVReviewModelCopyWith<$Res> {
  __$$_TVReviewModelCopyWithImpl(
      _$_TVReviewModel _value, $Res Function(_$_TVReviewModel) _then)
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
    return _then(_$_TVReviewModel(
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
class _$_TVReviewModel implements _TVReviewModel {
  const _$_TVReviewModel(
      {required this.author,
      required this.authorDetails,
      required this.content,
      required this.createdAt,
      required this.id,
      required this.updatedAt,
      required this.url});

  factory _$_TVReviewModel.fromJson(Map<String, dynamic> json) =>
      _$$_TVReviewModelFromJson(json);

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
    return 'TVReviewModel(author: $author, authorDetails: $authorDetails, content: $content, createdAt: $createdAt, id: $id, updatedAt: $updatedAt, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TVReviewModel &&
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
  _$$_TVReviewModelCopyWith<_$_TVReviewModel> get copyWith =>
      __$$_TVReviewModelCopyWithImpl<_$_TVReviewModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TVReviewModelToJson(
      this,
    );
  }
}

abstract class _TVReviewModel implements TVReviewModel {
  const factory _TVReviewModel(
      {required final String author,
      required final AuthorReviewModel authorDetails,
      required final String content,
      required final DateTime createdAt,
      required final String id,
      required final DateTime updatedAt,
      required final String url}) = _$_TVReviewModel;

  factory _TVReviewModel.fromJson(Map<String, dynamic> json) =
      _$_TVReviewModel.fromJson;

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
  _$$_TVReviewModelCopyWith<_$_TVReviewModel> get copyWith =>
      throw _privateConstructorUsedError;
}
