import 'package:freezed_annotation/freezed_annotation.dart';


part 'language_model.freezed.dart';

part 'language_model.g.dart';

@freezed
class LanguageModel with _$LanguageModel  {
  factory LanguageModel({
    required int? id,
    required String? language,
    required String? tip,
    
  }) = _LanguageModel;

  //LanguageModel._();

  factory LanguageModel.fromJson(Map<String, dynamic> json) =>
      _$LanguageModelFromJson(json);
  //String get image => '${AppSettings.baseUrl}/images/$linkfoto';
}
