import 'package:freezed_annotation/freezed_annotation.dart';

part 'addon_model.freezed.dart';

part 'addon_model.g.dart';

@freezed
class AddonModel with _$AddonModel {
  factory AddonModel({
    required int id,
    required String name,
    required int val,
    String? tip,
  }) = _AddonModel;

  factory AddonModel.fromJson(Map<String, dynamic> json) =>
      _$AddonModelFromJson(json);
}
