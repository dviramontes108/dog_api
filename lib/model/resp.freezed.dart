// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Resp _$RespFromJson(Map<String, dynamic> json) {
  return _Resp.fromJson(json);
}

/// @nodoc
mixin _$Resp {
  dynamic get message => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RespCopyWith<Resp> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RespCopyWith<$Res> {
  factory $RespCopyWith(Resp value, $Res Function(Resp) then) =
      _$RespCopyWithImpl<$Res, Resp>;
  @useResult
  $Res call({dynamic message, String status});
}

/// @nodoc
class _$RespCopyWithImpl<$Res, $Val extends Resp>
    implements $RespCopyWith<$Res> {
  _$RespCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RespImplCopyWith<$Res> implements $RespCopyWith<$Res> {
  factory _$$RespImplCopyWith(
          _$RespImpl value, $Res Function(_$RespImpl) then) =
      __$$RespImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic message, String status});
}

/// @nodoc
class __$$RespImplCopyWithImpl<$Res>
    extends _$RespCopyWithImpl<$Res, _$RespImpl>
    implements _$$RespImplCopyWith<$Res> {
  __$$RespImplCopyWithImpl(_$RespImpl _value, $Res Function(_$RespImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? status = null,
  }) {
    return _then(_$RespImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RespImpl implements _Resp {
  const _$RespImpl({required this.message, required this.status});

  factory _$RespImpl.fromJson(Map<String, dynamic> json) =>
      _$$RespImplFromJson(json);

  @override
  final dynamic message;
  @override
  final String status;

  @override
  String toString() {
    return 'Resp(message: $message, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RespImpl &&
            const DeepCollectionEquality().equals(other.message, message) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(message), status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RespImplCopyWith<_$RespImpl> get copyWith =>
      __$$RespImplCopyWithImpl<_$RespImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RespImplToJson(
      this,
    );
  }
}

abstract class _Resp implements Resp {
  const factory _Resp(
      {required final dynamic message,
      required final String status}) = _$RespImpl;

  factory _Resp.fromJson(Map<String, dynamic> json) = _$RespImpl.fromJson;

  @override
  dynamic get message;
  @override
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$RespImplCopyWith<_$RespImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
