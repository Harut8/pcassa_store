import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_model.freezed.dart';
part 'payment_model.g.dart';

@freezed
class PaymentModel with _$PaymentModel {
  factory PaymentModel({
    required String orderid,
    required int cod,
    required double amount,
    required int tip,
  }) = _PaymentModel;

  const PaymentModel._();

  factory PaymentModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentModelFromJson(json);
}
