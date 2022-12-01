// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SalesModel _$$_SalesModelFromJson(Map json) => _$_SalesModel(
      summa: (json['summa'] as num?)?.toDouble(),
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => ItemsModel.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$$_SalesModelToJson(_$_SalesModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('summa', instance.summa);
  writeNotNull('items', instance.items?.map((e) => e.toJson()).toList());
  return val;
}
