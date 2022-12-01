// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basket_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BasketItemModel _$$_BasketItemModelFromJson(Map json) => _$_BasketItemModel(
      id: json['id'] as int? ?? 0,
      code: json['code'] as String,
      name: json['name'] as String? ?? '',
      deletepersonid: json['deletepersonid'] as int?,
      quantity: json['quantity'] as int? ?? 1,
      realprice: (json['realprice'] as num?)?.toDouble() ?? 0,
      saleprice: (json['saleprice'] as num?)?.toDouble() ?? 0,
      recorddate: json['recorddate'] == null
          ? null
          : DateTime.parse(json['recorddate'] as String),
      flag: json['flag'] as int? ?? 0,
      edizm: json['edizm'] as String?,
      kname: json['kname'] as String?,
      adg: json['adg'] as String?,
    );

Map<String, dynamic> _$$_BasketItemModelToJson(_$_BasketItemModel instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'code': instance.code,
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('deletepersonid', instance.deletepersonid);
  val['quantity'] = instance.quantity;
  val['realprice'] = instance.realprice;
  val['saleprice'] = instance.saleprice;
  writeNotNull('recorddate', instance.recorddate?.toIso8601String());
  val['flag'] = instance.flag;
  writeNotNull('edizm', instance.edizm);
  writeNotNull('kname', instance.kname);
  writeNotNull('adg', instance.adg);
  return val;
}
