// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) {
  return _CategoryModel.fromJson(json);
}

/// @nodoc
mixin _$CategoryModel {
  String get guid => throw _privateConstructorUsedError;
  bool get isProduct => throw _privateConstructorUsedError;
  int? get isroot => throw _privateConstructorUsedError;
  int? get haschildren => throw _privateConstructorUsedError;
  String? get parentguid => throw _privateConstructorUsedError;
  String? get caption => throw _privateConstructorUsedError;
  String? get linkfoto => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryModelCopyWith<CategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryModelCopyWith<$Res> {
  factory $CategoryModelCopyWith(
          CategoryModel value, $Res Function(CategoryModel) then) =
      _$CategoryModelCopyWithImpl<$Res, CategoryModel>;
  @useResult
  $Res call(
      {String guid,
      bool isProduct,
      int? isroot,
      int? haschildren,
      String? parentguid,
      String? caption,
      String? linkfoto});
}

/// @nodoc
class _$CategoryModelCopyWithImpl<$Res, $Val extends CategoryModel>
    implements $CategoryModelCopyWith<$Res> {
  _$CategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? guid = null,
    Object? isProduct = null,
    Object? isroot = freezed,
    Object? haschildren = freezed,
    Object? parentguid = freezed,
    Object? caption = freezed,
    Object? linkfoto = freezed,
  }) {
    return _then(_value.copyWith(
      guid: null == guid
          ? _value.guid
          : guid // ignore: cast_nullable_to_non_nullable
              as String,
      isProduct: null == isProduct
          ? _value.isProduct
          : isProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      isroot: freezed == isroot
          ? _value.isroot
          : isroot // ignore: cast_nullable_to_non_nullable
              as int?,
      haschildren: freezed == haschildren
          ? _value.haschildren
          : haschildren // ignore: cast_nullable_to_non_nullable
              as int?,
      parentguid: freezed == parentguid
          ? _value.parentguid
          : parentguid // ignore: cast_nullable_to_non_nullable
              as String?,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      linkfoto: freezed == linkfoto
          ? _value.linkfoto
          : linkfoto // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoryModelCopyWith<$Res>
    implements $CategoryModelCopyWith<$Res> {
  factory _$$_CategoryModelCopyWith(
          _$_CategoryModel value, $Res Function(_$_CategoryModel) then) =
      __$$_CategoryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String guid,
      bool isProduct,
      int? isroot,
      int? haschildren,
      String? parentguid,
      String? caption,
      String? linkfoto});
}

/// @nodoc
class __$$_CategoryModelCopyWithImpl<$Res>
    extends _$CategoryModelCopyWithImpl<$Res, _$_CategoryModel>
    implements _$$_CategoryModelCopyWith<$Res> {
  __$$_CategoryModelCopyWithImpl(
      _$_CategoryModel _value, $Res Function(_$_CategoryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? guid = null,
    Object? isProduct = null,
    Object? isroot = freezed,
    Object? haschildren = freezed,
    Object? parentguid = freezed,
    Object? caption = freezed,
    Object? linkfoto = freezed,
  }) {
    return _then(_$_CategoryModel(
      guid: null == guid
          ? _value.guid
          : guid // ignore: cast_nullable_to_non_nullable
              as String,
      isProduct: null == isProduct
          ? _value.isProduct
          : isProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      isroot: freezed == isroot
          ? _value.isroot
          : isroot // ignore: cast_nullable_to_non_nullable
              as int?,
      haschildren: freezed == haschildren
          ? _value.haschildren
          : haschildren // ignore: cast_nullable_to_non_nullable
              as int?,
      parentguid: freezed == parentguid
          ? _value.parentguid
          : parentguid // ignore: cast_nullable_to_non_nullable
              as String?,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      linkfoto: freezed == linkfoto
          ? _value.linkfoto
          : linkfoto // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoryModel extends _CategoryModel {
  _$_CategoryModel(
      {required this.guid,
      this.isProduct = false,
      this.isroot,
      this.haschildren,
      this.parentguid,
      this.caption,
      this.linkfoto})
      : super._();

  factory _$_CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryModelFromJson(json);

  @override
  final String guid;
  @override
  @JsonKey()
  final bool isProduct;
  @override
  final int? isroot;
  @override
  final int? haschildren;
  @override
  final String? parentguid;
  @override
  final String? caption;
  @override
  final String? linkfoto;

  @override
  String toString() {
    return 'CategoryModel(guid: $guid, isProduct: $isProduct, isroot: $isroot, haschildren: $haschildren, parentguid: $parentguid, caption: $caption, linkfoto: $linkfoto)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryModel &&
            (identical(other.guid, guid) || other.guid == guid) &&
            (identical(other.isProduct, isProduct) ||
                other.isProduct == isProduct) &&
            (identical(other.isroot, isroot) || other.isroot == isroot) &&
            (identical(other.haschildren, haschildren) ||
                other.haschildren == haschildren) &&
            (identical(other.parentguid, parentguid) ||
                other.parentguid == parentguid) &&
            (identical(other.caption, caption) || other.caption == caption) &&
            (identical(other.linkfoto, linkfoto) ||
                other.linkfoto == linkfoto));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, guid, isProduct, isroot,
      haschildren, parentguid, caption, linkfoto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryModelCopyWith<_$_CategoryModel> get copyWith =>
      __$$_CategoryModelCopyWithImpl<_$_CategoryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryModelToJson(
      this,
    );
  }
}

abstract class _CategoryModel extends CategoryModel {
  factory _CategoryModel(
      {required final String guid,
      final bool isProduct,
      final int? isroot,
      final int? haschildren,
      final String? parentguid,
      final String? caption,
      final String? linkfoto}) = _$_CategoryModel;
  _CategoryModel._() : super._();

  factory _CategoryModel.fromJson(Map<String, dynamic> json) =
      _$_CategoryModel.fromJson;

  @override
  String get guid;
  @override
  bool get isProduct;
  @override
  int? get isroot;
  @override
  int? get haschildren;
  @override
  String? get parentguid;
  @override
  String? get caption;
  @override
  String? get linkfoto;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryModelCopyWith<_$_CategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
