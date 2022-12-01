// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map json) => _$_UserModel(
      id: json['id'] as int,
      login: json['login'] as String,
      fio: json['fio'] as String,
      language: json['language'] as String,
      dostup: (json['dostup'] as Map).map(
        (k, e) => MapEntry(
            k as String, (e as List<dynamic>).map((e) => e as String).toList()),
      ),
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'login': instance.login,
      'fio': instance.fio,
      'language': instance.language,
      'dostup': instance.dostup,
    };
