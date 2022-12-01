import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_sid_model.freezed.dart';
part 'set_sid_model.g.dart';

@freezed
class SetSidModel with _$SetSidModel {
  factory SetSidModel({
    required String device_id,
    required String otvet,
  }) = _SetSidModel;

  factory SetSidModel.fromJson(Map<String, dynamic> json) =>
      _$SetSidModelFromJson(json);
}
