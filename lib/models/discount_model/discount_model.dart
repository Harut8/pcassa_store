import 'package:freezed_annotation/freezed_annotation.dart';

import '../addon_model/addon_model.dart';

part 'discount_model.freezed.dart';

part 'discount_model.g.dart';

@freezed
class DiscountModel with _$DiscountModel {
  factory DiscountModel({
    required int id,
    required String name,
    @Default(<AddonModel>[]) List<AddonModel> items,
    String? linkfoto,
  }) = _DiscountModel;

  factory DiscountModel.fromJson(Map<String, dynamic> json) =>
      _$DiscountModelFromJson(json);
}
