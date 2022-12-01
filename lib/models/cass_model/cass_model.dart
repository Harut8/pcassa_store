import 'package:freezed_annotation/freezed_annotation.dart';
import 'cass_item.dart';
part 'cass_model.freezed.dart';
part 'cass_model.g.dart';

@freezed
class CassModel with _$CassModel {
  factory CassModel({
    required double? sale,
    required CassItemsModel? inkass,
    required CassItemsModel? vnes,
    required double? amount,
  }) = _CassModel;

  //const PaymentModel._();

  factory CassModel.fromJson(Map<String, dynamic> json) =>
      _$CassModelFromJson(json);
}
