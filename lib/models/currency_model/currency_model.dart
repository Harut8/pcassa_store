import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency_model.freezed.dart';
part 'currency_model.g.dart';

@freezed
class CurrencyModel with _$CurrencyModel {
  factory CurrencyModel({
    required int cod,
    required String name,
    @Default(false) bool b_valyuta,
    String? linkfoto,
    @Default(0) int tip,
  }) = _CurrencyModel;

  const CurrencyModel._();

  factory CurrencyModel.fromJson(Map<String, dynamic> json) =>
      _$CurrencyModelFromJson(json);
}
