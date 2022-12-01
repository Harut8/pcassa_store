// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderInfoModel _$$_OrderInfoModelFromJson(Map json) => _$_OrderInfoModel(
      cashid: json['cashid'] as int,
      orderid: json['orderid'] as String? ?? '0',
      deptamount: (json['deptamount'] as num?)?.toDouble() ?? 0,
      paidamount: (json['paidamount'] as num?)?.toDouble() ?? 0,
      paidamountcard: (json['paidamountcard'] as num?)?.toDouble() ?? 0,
      waiter_name: json['waiter_name'] as String?,
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      saleprice: json['saleprice'] as int? ?? 0,
    );

Map<String, dynamic> _$$_OrderInfoModelToJson(_$_OrderInfoModel instance) {
  final val = <String, dynamic>{
    'cashid': instance.cashid,
    'orderid': instance.orderid,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('deptamount', instance.deptamount);
  writeNotNull('paidamount', instance.paidamount);
  writeNotNull('paidamountcard', instance.paidamountcard);
  writeNotNull('waiter_name', instance.waiter_name);
  writeNotNull('created_at', instance.created_at?.toIso8601String());
  val['saleprice'] = instance.saleprice;
  return val;
}
