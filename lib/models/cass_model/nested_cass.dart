import 'package:freezed_annotation/freezed_annotation.dart';

part 'nested_cass.freezed.dart';
part 'nested_cass.g.dart';

@freezed
class NestedCassModel with _$NestedCassModel {
  factory NestedCassModel({
  required String? description,
  required String? data_d,
  required double? summa
  }) = _NestedCassModel;

  //const PaymentModel._();

  factory NestedCassModel.fromJson(Map<String, dynamic> json) =>
      _$NestedCassModelFromJson(json);
}
