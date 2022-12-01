// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductModel _$$_ProductModelFromJson(Map json) => _$_ProductModel(
      guid: json['guid'] as String?,
      name: json['name'] as String?,
      ed_izm: json['ed_izm'] as String?,
      kod_tov: json['kod_tov'] as String?,
      barcode: json['barcode'] as String?,
      barcode_grupp: json['barcode_grupp'] as String?,
      kname: json['kname'] as String?,
      adg: json['adg'] as String?,
      priznak_sk: json['priznak_sk'] as int?,
      isProduct: json['isProduct'] as bool? ?? true,
      top: json['top'] as bool? ?? false,
      modifrequired: json['modifrequired'] as bool? ?? false,
      guid_mod: (json['guid_mod'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      price_o_r: (json['price_o_r'] as num?)?.toDouble() ?? 0,
      price_o_o: (json['price_o_o'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$_ProductModelToJson(_$_ProductModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('guid', instance.guid);
  writeNotNull('name', instance.name);
  writeNotNull('ed_izm', instance.ed_izm);
  writeNotNull('kod_tov', instance.kod_tov);
  writeNotNull('barcode', instance.barcode);
  writeNotNull('barcode_grupp', instance.barcode_grupp);
  writeNotNull('kname', instance.kname);
  writeNotNull('adg', instance.adg);
  writeNotNull('priznak_sk', instance.priznak_sk);
  val['isProduct'] = instance.isProduct;
  val['top'] = instance.top;
  val['modifrequired'] = instance.modifrequired;
  val['guid_mod'] = instance.guid_mod;
  val['price_o_r'] = instance.price_o_r;
  val['price_o_o'] = instance.price_o_o;
  return val;
}
