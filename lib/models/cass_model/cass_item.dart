import 'package:freezed_annotation/freezed_annotation.dart';
import 'nested_cass.dart';
part 'cass_item.freezed.dart';
part 'cass_item.g.dart';

@freezed
class CassItemsModel with _$CassItemsModel {
  factory CassItemsModel({
  required double? Amount,
  required List<NestedCassModel>? items
  }) = _CassItemsModel;

  //const PaymentModel._();

  factory CassItemsModel.fromJson(Map<String, dynamic> json) =>
      _$CassItemsModelFromJson(json);
}
