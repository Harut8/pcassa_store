// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modifiers_group_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ModifiersGroupModel _$$_ModifiersGroupModelFromJson(Map json) =>
    _$_ModifiersGroupModel(
      main: (json['main'] as List<dynamic>)
          .map((e) =>
              ModifierModel.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      optional: (json['optional'] as List<dynamic>)
          .map((e) =>
              ModifierModel.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$$_ModifiersGroupModelToJson(
        _$_ModifiersGroupModel instance) =>
    <String, dynamic>{
      'main': instance.main.map((e) => e.toJson()).toList(),
      'optional': instance.optional.map((e) => e.toJson()).toList(),
    };
