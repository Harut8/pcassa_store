import 'package:freezed_annotation/freezed_annotation.dart';

import '../../constants/app_settings.dart';
import '../table_model/table_model.dart';

part 'table_group_model.freezed.dart';

part 'table_group_model.g.dart';

@freezed
class TableGroupModel with _$TableGroupModel {
  factory TableGroupModel({
    required int id,
    required String name,
    @Default(<TableModel>[]) List<TableModel> tables,
    String? linkfoto,
  }) = _TableGroup;

  const TableGroupModel._();

  factory TableGroupModel.fromJson(Map<String, dynamic> json) =>
      _$TableGroupModelFromJson(json);

  String get image => '${AppSettings.baseUrl}/images/$linkfoto';
}
