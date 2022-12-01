import 'package:freezed_annotation/freezed_annotation.dart';

import '../../constants/app_settings.dart';
import '../menu_abstract_model/menu_abstract_model.dart';

part 'category_model.freezed.dart';

part 'category_model.g.dart';

@freezed
class CategoryModel with _$CategoryModel implements MenuAbstractModel {
  factory CategoryModel({
    required String guid,
    @Default(false) bool isProduct,
    int? isroot,
    int? haschildren,
    String? parentguid,
    String? caption,
    String? linkfoto,
  }) = _CategoryModel;

  const CategoryModel._();

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);

  String get image => '${AppSettings.baseUrl}/images/$linkfoto';
}
