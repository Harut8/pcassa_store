import 'package:freezed_annotation/freezed_annotation.dart';
import '../category_model/category_model.dart';

import '../modifiers_group_model/modifiers_group_model.dart';
import '../product_model/product_model.dart';

part 'menu_model.freezed.dart';

part 'menu_model.g.dart';

@freezed
class MenuModel with _$MenuModel {
  factory MenuModel({
    required List<CategoryModel> category,
    required List<ProductModel> menu,
    required ModifiersGroupModel modifield,
  }) = _MenuModel;

  factory MenuModel.fromJson(Map<String, dynamic> json) =>
      _$MenuModelFromJson(json);
}
