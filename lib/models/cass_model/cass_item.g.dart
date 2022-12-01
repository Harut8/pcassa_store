// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cass_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CassItemsModel _$$_CassItemsModelFromJson(Map json) => _$_CassItemsModel(
      Amount: (json['Amount'] as num?)?.toDouble(),
      items: (json['items'] as List<dynamic>?)
          ?.map((e) =>
              NestedCassModel.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$$_CassItemsModelToJson(_$_CassItemsModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Amount', instance.Amount);
  writeNotNull('items', instance.items?.map((e) => e.toJson()).toList());
  return val;
}
