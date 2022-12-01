import 'package:freezed_annotation/freezed_annotation.dart';

import '../modifier_model/modifier_model.dart';

part 'modifiers_group_model.freezed.dart';

part 'modifiers_group_model.g.dart';

@freezed
class ModifiersGroupModel with _$ModifiersGroupModel {
  factory ModifiersGroupModel({
    required List<ModifierModel> main,
    required List<ModifierModel> optional,
  }) = _ModifiersGroupModel;

  factory ModifiersGroupModel.fromJson(Map<String, dynamic> json) =>
      _$ModifiersGroupModelFromJson(json);
}
