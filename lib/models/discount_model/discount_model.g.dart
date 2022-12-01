// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discount_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DiscountModel _$$_DiscountModelFromJson(Map json) => _$_DiscountModel(
      id: json['id'] as int,
      name: json['name'] as String,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) =>
                  AddonModel.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const <AddonModel>[],
      linkfoto: json['linkfoto'] as String?,
    );

Map<String, dynamic> _$$_DiscountModelToJson(_$_DiscountModel instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'name': instance.name,
    'items': instance.items.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('linkfoto', instance.linkfoto);
  return val;
}
