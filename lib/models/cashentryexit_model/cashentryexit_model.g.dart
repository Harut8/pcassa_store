// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cashentryexit_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CashentryexitModel _$$_CashentryexitModelFromJson(Map json) =>
    _$_CashentryexitModel(
      n_smena: json['n_smena'] as String,
      amount: (json['amount'] as num).toDouble(),
      description: json['description'] as String,
      tip: json['tip'] as int,
    );

Map<String, dynamic> _$$_CashentryexitModelToJson(
        _$_CashentryexitModel instance) =>
    <String, dynamic>{
      'n_smena': instance.n_smena,
      'amount': instance.amount,
      'description': instance.description,
      'tip': instance.tip,
    };
