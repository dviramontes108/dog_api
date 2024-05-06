// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dog.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Dog _$DogFromJson(Map<String, dynamic> json) {
  return _Dog.fromJson(json);
}

/// @nodoc
mixin _$Dog {
  String get name => throw _privateConstructorUsedError;
  List<String> get breeds => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DogCopyWith<Dog> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DogCopyWith<$Res> {
  factory $DogCopyWith(Dog value, $Res Function(Dog) then) =
      _$DogCopyWithImpl<$Res, Dog>;
  @useResult
  $Res call({String name, List<String> breeds, String? image});
}

/// @nodoc
class _$DogCopyWithImpl<$Res, $Val extends Dog> implements $DogCopyWith<$Res> {
  _$DogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? breeds = null,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      breeds: null == breeds
          ? _value.breeds
          : breeds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DogImplCopyWith<$Res> implements $DogCopyWith<$Res> {
  factory _$$DogImplCopyWith(_$DogImpl value, $Res Function(_$DogImpl) then) =
      __$$DogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, List<String> breeds, String? image});
}

/// @nodoc
class __$$DogImplCopyWithImpl<$Res> extends _$DogCopyWithImpl<$Res, _$DogImpl>
    implements _$$DogImplCopyWith<$Res> {
  __$$DogImplCopyWithImpl(_$DogImpl _value, $Res Function(_$DogImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? breeds = null,
    Object? image = freezed,
  }) {
    return _then(_$DogImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      breeds: null == breeds
          ? _value._breeds
          : breeds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DogImpl implements _Dog {
  const _$DogImpl(
      {required this.name, required final List<String> breeds, this.image})
      : _breeds = breeds;

  factory _$DogImpl.fromJson(Map<String, dynamic> json) =>
      _$$DogImplFromJson(json);

  @override
  final String name;
  final List<String> _breeds;
  @override
  List<String> get breeds {
    if (_breeds is EqualUnmodifiableListView) return _breeds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_breeds);
  }

  @override
  final String? image;

  @override
  String toString() {
    return 'Dog(name: $name, breeds: $breeds, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DogImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._breeds, _breeds) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_breeds), image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DogImplCopyWith<_$DogImpl> get copyWith =>
      __$$DogImplCopyWithImpl<_$DogImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DogImplToJson(
      this,
    );
  }
}

abstract class _Dog implements Dog {
  const factory _Dog(
      {required final String name,
      required final List<String> breeds,
      final String? image}) = _$DogImpl;

  factory _Dog.fromJson(Map<String, dynamic> json) = _$DogImpl.fromJson;

  @override
  String get name;
  @override
  List<String> get breeds;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$DogImplCopyWith<_$DogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
