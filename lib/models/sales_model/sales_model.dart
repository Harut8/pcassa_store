import 'package:freezed_annotation/freezed_annotation.dart';

import 'items_model.dart';

part 'sales_model.freezed.dart';
part 'sales_model.g.dart';

@freezed
class SalesModel with _$SalesModel {
  factory SalesModel({
    required double? summa,
    required List<ItemsModel>? items,
  }) = _SalesModel;

  //const PaymentModel._();

  factory SalesModel.fromJson(Map<String, dynamic> json) =>
      _$SalesModelFromJson(json);
}
