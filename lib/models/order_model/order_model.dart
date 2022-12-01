import 'package:freezed_annotation/freezed_annotation.dart';

import '../basket_item_model/basket_item_model.dart';
import '../order_info_model/order_info_model.dart';

part 'order_model.freezed.dart';
part 'order_model.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class OrderModel with _$OrderModel {
  factory OrderModel({
    required OrderInfoModel orderinfo,
    @Default(<BasketItemModel>[]) List<BasketItemModel> basket,
  }) = _OrderModel;

  const OrderModel._();

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);
}
