import 'dart:ffi';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../constants/app_settings.dart';

part 'info_model.freezed.dart';
part 'info_model.g.dart';

@freezed
class InfoModel with _$InfoModel {
  factory InfoModel({
    required int id,
    required String name,
    required String adress,
    required String tel,
    required String mail,
    required String prim,
    required String linklogo,
    required int n_smena
  }) = _InfoModel;

  InfoModel._();

  factory InfoModel.fromJson(Map<String, dynamic> json) =>
      _$InfoModelFromJson(json);

  String get logo => '${AppSettings.baseUrl}/images/$linklogo';
}
