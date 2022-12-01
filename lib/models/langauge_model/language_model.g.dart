// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LanguageModel _$$_LanguageModelFromJson(Map json) => _$_LanguageModel(
      id: json['id'] as int?,
      language: json['language'] as String?,
      tip: json['tip'] as String?,
    );

Map<String, dynamic> _$$_LanguageModelToJson(_$_LanguageModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('language', instance.language);
  writeNotNull('tip', instance.tip);
  return val;
}
