import 'package:freezed_annotation/freezed_annotation.dart';

import '../../constants/app_settings.dart';
import '../menu_abstract_model/menu_abstract_model.dart';

part 'product_model.freezed.dart';

part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel implements MenuAbstractModel {
  factory ProductModel({
    required String? guid,
    required String? name,
    required String? ed_izm,
    required String? kod_tov,
    required String? barcode,
    required String? barcode_grupp,
    required String? kname,
    required String? adg,
    required int? priznak_sk,
    @Default(true) bool isProduct,
    @Default(false) bool top,
    @Default(false) bool modifrequired,
    @Default([]) List<String> guid_mod,
    @Default(0) double price_o_r,
    @Default(0) double price_o_o,
    
  }) = _ProductModel;

  ProductModel._();

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);

  //String get image => '${AppSettings.baseUrl}/images/$linkfoto';
}
