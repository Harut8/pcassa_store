import 'package:freezed_annotation/freezed_annotation.dart';

part 'modifier_model.freezed.dart';

part 'modifier_model.g.dart';

@freezed
class ModifierModel with _$ModifierModel {
  factory ModifierModel({
    required String guid,
    required String name,
    required String? description,
    required String ed_izm,
    required String gguid,
    required String kat_tov,
    required String kod_tov,
    required String barcode,
    required String barcode_grupp,
    required String kname,
    required String adg,
    required int priznak_sk,
    required int komplekt_id,
    required bool top,
    @Default(0) int price_o_r,
    @Default(0) int price_o_o,
    String? linkfoto,
    @Default(1) int count,
  }) = _ModifierModel;

  factory ModifierModel.fromJson(Map<String, dynamic> json) =>
      _$ModifierModelFromJson(json);
}
