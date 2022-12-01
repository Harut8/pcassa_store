import 'package:freezed_annotation/freezed_annotation.dart';

import '../../constants/app_settings.dart';

part 'table_model.freezed.dart';

part 'table_model.g.dart';

@freezed
class TableModel with _$TableModel {
  factory TableModel({
    required int id,
    required String n_t,
    required int k_g,
    String? linkfoto,
    int? skidnac,
    @Default(false) bool status,
  }) = _TableModel;

  const TableModel._();

  factory TableModel.fromJson(Map<String, dynamic> json) =>
      _$TableModelFromJson(json);

  String get image => '${AppSettings.baseUrl}/images/$linkfoto';
}
