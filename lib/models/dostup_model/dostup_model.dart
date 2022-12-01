import 'package:freezed_annotation/freezed_annotation.dart';

part 'dostup_model.freezed.dart';

part 'dostup_model.g.dart';

@freezed
class DostupModel with _$DostupModel {
  factory DostupModel({
    required String discount_product,
            
  }) = _DostupModel;

  factory DostupModel.fromJson(Map<String, dynamic> json) =>
      _$DostupModelFromJson(json);
}
