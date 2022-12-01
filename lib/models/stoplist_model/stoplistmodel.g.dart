// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stoplistmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StopListModel _$$_StopListModelFromJson(Map json) => _$_StopListModel(
      name: json['name'] as String,
      description: json['description'] as String?,
      kod_tov: json['kod_tov'] as String,
      quantity: (json['quantity'] as num).toDouble(),
    );

Map<String, dynamic> _$$_StopListModelToJson(_$_StopListModel instance) {
  final val = <String, dynamic>{
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  val['kod_tov'] = instance.kod_tov;
  val['quantity'] = instance.quantity;
  return val;
}
