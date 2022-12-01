import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_sid_model.freezed.dart';
part 'get_sid_model.g.dart';

@freezed
class GetSidModel with _$GetSidModel {
  factory GetSidModel({
    required String sid,
  }) = _GetSidModel;

  factory GetSidModel.fromJson(Map<String, dynamic> json) =>
      _$GetSidModelFromJson(json);
}
