import 'package:freezed_annotation/freezed_annotation.dart';

part 'savedorder_model.freezed.dart';
part 'savedorder_model.g.dart';

@freezed
class SavedOrderModel with _$SavedOrderModel {
  factory SavedOrderModel({
    int? group_id,
    int? orderid,
    String? table_name,
    String? waiter_name,
    DateTime? created_at,
    int? saleprice,
  }) = _SavedOrderModel;

  factory SavedOrderModel.fromJson(Map<String, dynamic> json) =>
      _$SavedOrderModelFromJson(json);
}
