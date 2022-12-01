// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentModel _$$_PaymentModelFromJson(Map json) => _$_PaymentModel(
      orderid: json['orderid'] as String,
      cod: json['cod'] as int,
      amount: (json['amount'] as num).toDouble(),
      tip: json['tip'] as int,
    );

Map<String, dynamic> _$$_PaymentModelToJson(_$_PaymentModel instance) =>
    <String, dynamic>{
      'orderid': instance.orderid,
      'cod': instance.cod,
      'amount': instance.amount,
      'tip': instance.tip,
    };
