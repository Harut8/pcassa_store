import "package:freezed_annotation/freezed_annotation.dart";

part 'stoplistmodel.freezed.dart';
part 'stoplistmodel.g.dart';

@freezed
class StopListModel with _$StopListModel{
  factory StopListModel({
        required String name,
        required String? description,
        required String kod_tov,
        required double quantity
  }) = _StopListModel;
  factory StopListModel.fromJson(Map<String, dynamic> json) =>
      _$StopListModelFromJson(json);
}