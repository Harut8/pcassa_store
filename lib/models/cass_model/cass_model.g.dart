// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cass_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CassModel _$$_CassModelFromJson(Map json) => _$_CassModel(
      sale: (json['sale'] as num?)?.toDouble(),
      inkass: json['inkass'] == null
          ? null
          : CassItemsModel.fromJson(
              Map<String, dynamic>.from(json['inkass'] as Map)),
      vnes: json['vnes'] == null
          ? null
          : CassItemsModel.fromJson(
              Map<String, dynamic>.from(json['vnes'] as Map)),
      amount: (json['amount'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_CassModelToJson(_$_CassModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('sale', instance.sale);
  writeNotNull('inkass', instance.inkass?.toJson());
  writeNotNull('vnes', instance.vnes?.toJson());
  writeNotNull('amount', instance.amount);
  return val;
}
