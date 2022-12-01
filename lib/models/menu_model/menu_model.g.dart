// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MenuModel _$$_MenuModelFromJson(Map json) => _$_MenuModel(
      category: (json['category'] as List<dynamic>)
          .map((e) =>
              CategoryModel.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      menu: (json['menu'] as List<dynamic>)
          .map(
              (e) => ProductModel.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      modifield: ModifiersGroupModel.fromJson(
          Map<String, dynamic>.from(json['modifield'] as Map)),
    );

Map<String, dynamic> _$$_MenuModelToJson(_$_MenuModel instance) =>
    <String, dynamic>{
      'category': instance.category.map((e) => e.toJson()).toList(),
      'menu': instance.menu.map((e) => e.toJson()).toList(),
      'modifield': instance.modifield.toJson(),
    };
