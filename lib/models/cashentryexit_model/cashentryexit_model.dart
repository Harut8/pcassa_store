import 'package:freezed_annotation/freezed_annotation.dart';

import '../../constants/app_settings.dart';
import '../menu_abstract_model/menu_abstract_model.dart';

part 'cashentryexit_model.freezed.dart';

part 'cashentryexit_model.g.dart';

@freezed
class CashentryexitModel with _$CashentryexitModel{
  factory CashentryexitModel({
    required String n_smena,
    required double amount,
    required String description,
    required int tip,

  }) = _CashentryexitModel;


  factory CashentryexitModel.fromJson(Map<String, dynamic> json) =>
      _$CashentryexitModelFromJson(json);

}
