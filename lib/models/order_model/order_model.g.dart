// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderModel _$$_OrderModelFromJson(Map json) => _$_OrderModel(
      orderinfo: OrderInfoModel.fromJson(
          Map<String, dynamic>.from(json['orderinfo'] as Map)),
      basket: (json['basket'] as List<dynamic>?)
              ?.map((e) =>
                  BasketItemModel.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const <BasketItemModel>[],
    );

Map<String, dynamic> _$$_OrderModelToJson(_$_OrderModel instance) =>
    <String, dynamic>{
      'orderinfo': instance.orderinfo.toJson(),
      'basket': instance.basket.map((e) => e.toJson()).toList(),
    };
