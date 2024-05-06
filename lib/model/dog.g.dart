// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dog.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DogImpl _$$DogImplFromJson(Map<String, dynamic> json) => _$DogImpl(
      name: json['name'] as String,
      breeds:
          (json['breeds'] as List<dynamic>).map((e) => e as String).toList(),
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$DogImplToJson(_$DogImpl instance) => <String, dynamic>{
      'name': instance.name,
      'breeds': instance.breeds,
      'image': instance.image,
    };
