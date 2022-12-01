// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TableModel _$$_TableModelFromJson(Map json) => _$_TableModel(
      id: json['id'] as int,
      n_t: json['n_t'] as String,
      k_g: json['k_g'] as int,
      linkfoto: json['linkfoto'] as String?,
      skidnac: json['skidnac'] as int?,
      status: json['status'] as bool? ?? false,
    );

Map<String, dynamic> _$$_TableModelToJson(_$_TableModel instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'n_t': instance.n_t,
    'k_g': instance.k_g,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('linkfoto', instance.linkfoto);
  writeNotNull('skidnac', instance.skidnac);
  val['status'] = instance.status;
  return val;
}
