import 'package:freezed_annotation/freezed_annotation.dart';

part 'items_model.freezed.dart';
part 'items_model.g.dart';

@freezed
class ItemsModel with _$ItemsModel {
  factory ItemsModel({
  required String? kod_tov,
  required String? barcode,
  required String? name,
  required String? ed_izm,
  required double?  Quantity,
  required double? SalePrice,
  required double? Amount
  }) = _ItemsModel;

  //const PaymentModel._();

  factory ItemsModel.fromJson(Map<String, dynamic> json) =>
      _$ItemsModelFromJson(json);
}
