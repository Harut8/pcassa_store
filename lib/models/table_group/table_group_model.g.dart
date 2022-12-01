// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table_group_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TableGroup _$$_TableGroupFromJson(Map json) => _$_TableGroup(
      id: json['id'] as int,
      name: json['name'] as String,
      tables: (json['tables'] as List<dynamic>?)
              ?.map((e) =>
                  TableModel.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const <TableModel>[],
      linkfoto: json['linkfoto'] as String?,
    );

Map<String, dynamic> _$$_TableGroupToJson(_$_TableGroup instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'name': instance.name,
    'tables': instance.tables.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('linkfoto', instance.linkfoto);
  return val;
}
