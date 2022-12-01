import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_info_model.freezed.dart';
part 'order_info_model.g.dart';

@freezed
class OrderInfoModel with _$OrderInfoModel {
  factory OrderInfoModel({
    required int cashid,
    @Default('0') String orderid,
    //@Default(1) int k_g,
    //String? table_name,
    @Default(0) double? deptamount,
    @Default(0) double? paidamount ,
    @Default(0) double? paidamountcard,
    String? waiter_name,
    DateTime? created_at,
    @Default(0) int saleprice,
  }) = _OrderInfoModel;

  const OrderInfoModel._();

  factory OrderInfoModel.fromJson(Map<String, dynamic> json) =>
      _$OrderInfoModelFromJson(json);
}
