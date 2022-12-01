// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItemsModel _$$_ItemsModelFromJson(Map json) => _$_ItemsModel(
      kod_tov: json['kod_tov'] as String?,
      barcode: json['barcode'] as String?,
      name: json['name'] as String?,
      ed_izm: json['ed_izm'] as String?,
      Quantity: (json['Quantity'] as num?)?.toDouble(),
      SalePrice: (json['SalePrice'] as num?)?.toDouble(),
      Amount: (json['Amount'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_ItemsModelToJson(_$_ItemsModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('kod_tov', instance.kod_tov);
  writeNotNull('barcode', instance.barcode);
  writeNotNull('name', instance.name);
  writeNotNull('ed_izm', instance.ed_izm);
  writeNotNull('Quantity', instance.Quantity);
  writeNotNull('SalePrice', instance.SalePrice);
  writeNotNull('Amount', instance.Amount);
  return val;
}
