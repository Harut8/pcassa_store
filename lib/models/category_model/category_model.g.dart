// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryModel _$$_CategoryModelFromJson(Map json) => _$_CategoryModel(
      guid: json['guid'] as String,
      isProduct: json['isProduct'] as bool? ?? false,
      isroot: json['isroot'] as int?,
      haschildren: json['haschildren'] as int?,
      parentguid: json['parentguid'] as String?,
      caption: json['caption'] as String?,
      linkfoto: json['linkfoto'] as String?,
    );

Map<String, dynamic> _$$_CategoryModelToJson(_$_CategoryModel instance) {
  final val = <String, dynamic>{
    'guid': instance.guid,
    'isProduct': instance.isProduct,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('isroot', instance.isroot);
  writeNotNull('haschildren', instance.haschildren);
  writeNotNull('parentguid', instance.parentguid);
  writeNotNull('caption', instance.caption);
  writeNotNull('linkfoto', instance.linkfoto);
  return val;
}
