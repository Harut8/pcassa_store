// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CurrencyModel _$$_CurrencyModelFromJson(Map json) => _$_CurrencyModel(
      cod: json['cod'] as int,
      name: json['name'] as String,
      b_valyuta: json['b_valyuta'] as bool? ?? false,
      linkfoto: json['linkfoto'] as String?,
      tip: json['tip'] as int? ?? 0,
    );

Map<String, dynamic> _$$_CurrencyModelToJson(_$_CurrencyModel instance) {
  final val = <String, dynamic>{
    'cod': instance.cod,
    'name': instance.name,
    'b_valyuta': instance.b_valyuta,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('linkfoto', instance.linkfoto);
  val['tip'] = instance.tip;
  return val;
}
