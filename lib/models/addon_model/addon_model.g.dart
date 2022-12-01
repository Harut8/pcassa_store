// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddonModel _$$_AddonModelFromJson(Map json) => _$_AddonModel(
      id: json['id'] as int,
      name: json['name'] as String,
      val: json['val'] as int,
      tip: json['tip'] as String?,
    );

Map<String, dynamic> _$$_AddonModelToJson(_$_AddonModel instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'name': instance.name,
    'val': instance.val,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('tip', instance.tip);
  return val;
}
