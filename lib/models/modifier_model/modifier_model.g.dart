// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modifier_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ModifierModel _$$_ModifierModelFromJson(Map json) => _$_ModifierModel(
      guid: json['guid'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      ed_izm: json['ed_izm'] as String,
      gguid: json['gguid'] as String,
      kat_tov: json['kat_tov'] as String,
      kod_tov: json['kod_tov'] as String,
      barcode: json['barcode'] as String,
      barcode_grupp: json['barcode_grupp'] as String,
      kname: json['kname'] as String,
      adg: json['adg'] as String,
      priznak_sk: json['priznak_sk'] as int,
      komplekt_id: json['komplekt_id'] as int,
      top: json['top'] as bool,
      price_o_r: json['price_o_r'] as int? ?? 0,
      price_o_o: json['price_o_o'] as int? ?? 0,
      linkfoto: json['linkfoto'] as String?,
      count: json['count'] as int? ?? 1,
    );

Map<String, dynamic> _$$_ModifierModelToJson(_$_ModifierModel instance) {
  final val = <String, dynamic>{
    'guid': instance.guid,
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  val['ed_izm'] = instance.ed_izm;
  val['gguid'] = instance.gguid;
  val['kat_tov'] = instance.kat_tov;
  val['kod_tov'] = instance.kod_tov;
  val['barcode'] = instance.barcode;
  val['barcode_grupp'] = instance.barcode_grupp;
  val['kname'] = instance.kname;
  val['adg'] = instance.adg;
  val['priznak_sk'] = instance.priznak_sk;
  val['komplekt_id'] = instance.komplekt_id;
  val['top'] = instance.top;
  val['price_o_r'] = instance.price_o_r;
  val['price_o_o'] = instance.price_o_o;
  writeNotNull('linkfoto', instance.linkfoto);
  val['count'] = instance.count;
  return val;
}
