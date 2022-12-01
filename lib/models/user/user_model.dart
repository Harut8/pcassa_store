import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pcassa/models/dostup_model/dostup_model.dart';

part 'user_model.freezed.dart';

part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  factory UserModel({
    required int id,
    required String login,
    required String fio,
    required String language,
    required Map<String,List<String>> dostup
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
