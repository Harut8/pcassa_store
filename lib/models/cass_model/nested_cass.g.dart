// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nested_cass.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NestedCassModel _$$_NestedCassModelFromJson(Map json) => _$_NestedCassModel(
      description: json['description'] as String?,
      data_d: json['data_d'] as String?,
      summa: (json['summa'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_NestedCassModelToJson(_$_NestedCassModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  writeNotNull('data_d', instance.data_d);
  writeNotNull('summa', instance.summa);
  return val;
}
