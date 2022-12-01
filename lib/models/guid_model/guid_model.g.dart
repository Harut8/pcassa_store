// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guid_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GuidModel _$$_GuidModelFromJson(Map json) => _$_GuidModel(
      id: json['id'] as int,
      dep: json['dep'] as int,
      name: json['name'] as String,
      deletepersonid: json['deletepersonid'] as int,
      quantity: json['quantity'] as int,
      realprice: json['realprice'] as int,
      saleprice: json['saleprice'] as int,
      recorddate: json['recorddate'] as String,
      flag: json['flag'] as int,
      edzim: json['edzim'] as String,
      kname: json['kname'] as String,
      adg: json['adg'] as String,
      mesto: json['mesto'] as int,
    );

Map<String, dynamic> _$$_GuidModelToJson(_$_GuidModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dep': instance.dep,
      'name': instance.name,
      'deletepersonid': instance.deletepersonid,
      'quantity': instance.quantity,
      'realprice': instance.realprice,
      'saleprice': instance.saleprice,
      'recorddate': instance.recorddate,
      'flag': instance.flag,
      'edzim': instance.edzim,
      'kname': instance.kname,
      'adg': instance.adg,
      'mesto': instance.mesto,
    };
