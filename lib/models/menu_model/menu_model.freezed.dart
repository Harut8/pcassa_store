// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'menu_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MenuModel _$MenuModelFromJson(Map<String, dynamic> json) {
  return _MenuModel.fromJson(json);
}

/// @nodoc
mixin _$MenuModel {
  List<CategoryModel> get category => throw _privateConstructorUsedError;
  List<ProductModel> get menu => throw _privateConstructorUsedError;
  ModifiersGroupModel get modifield => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MenuModelCopyWith<MenuModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuModelCopyWith<$Res> {
  factory $MenuModelCopyWith(MenuModel value, $Res Function(MenuModel) then) =
      _$MenuModelCopyWithImpl<$Res, MenuModel>;
  @useResult
  $Res call(
      {List<CategoryModel> category,
      List<ProductModel> menu,
      ModifiersGroupModel modifield});

  $ModifiersGroupModelCopyWith<$Res> get modifield;
}

/// @nodoc
class _$MenuModelCopyWithImpl<$Res, $Val extends MenuModel>
    implements $MenuModelCopyWith<$Res> {
  _$MenuModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? menu = null,
    Object? modifield = null,
  }) {
    return _then(_value.copyWith(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      menu: null == menu
          ? _value.menu
          : menu // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      modifield: null == modifield
          ? _value.modifield
          : modifield // ignore: cast_nullable_to_non_nullable
              as ModifiersGroupModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ModifiersGroupModelCopyWith<$Res> get modifield {
    return $ModifiersGroupModelCopyWith<$Res>(_value.modifield, (value) {
      return _then(_value.copyWith(modifield: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MenuModelCopyWith<$Res> implements $MenuModelCopyWith<$Res> {
  factory _$$_MenuModelCopyWith(
          _$_MenuModel value, $Res Function(_$_MenuModel) then) =
      __$$_MenuModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CategoryModel> category,
      List<ProductModel> menu,
      ModifiersGroupModel modifield});

  @override
  $ModifiersGroupModelCopyWith<$Res> get modifield;
}

/// @nodoc
class __$$_MenuModelCopyWithImpl<$Res>
    extends _$MenuModelCopyWithImpl<$Res, _$_MenuModel>
    implements _$$_MenuModelCopyWith<$Res> {
  __$$_MenuModelCopyWithImpl(
      _$_MenuModel _value, $Res Function(_$_MenuModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? menu = null,
    Object? modifield = null,
  }) {
    return _then(_$_MenuModel(
      category: null == category
          ? _value._category
          : category // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      menu: null == menu
          ? _value._menu
          : menu // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      modifield: null == modifield
          ? _value.modifield
          : modifield // ignore: cast_nullable_to_non_nullable
              as ModifiersGroupModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MenuModel implements _MenuModel {
  _$_MenuModel(
      {required final List<CategoryModel> category,
      required final List<ProductModel> menu,
      required this.modifield})
      : _category = category,
        _menu = menu;

  factory _$_MenuModel.fromJson(Map<String, dynamic> json) =>
      _$$_MenuModelFromJson(json);

  final List<CategoryModel> _category;
  @override
  List<CategoryModel> get category {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_category);
  }

  final List<ProductModel> _menu;
  @override
  List<ProductModel> get menu {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_menu);
  }

  @override
  final ModifiersGroupModel modifield;

  @override
  String toString() {
    return 'MenuModel(category: $category, menu: $menu, modifield: $modifield)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MenuModel &&
            const DeepCollectionEquality().equals(other._category, _category) &&
            const DeepCollectionEquality().equals(other._menu, _menu) &&
            (identical(other.modifield, modifield) ||
                other.modifield == modifield));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_category),
      const DeepCollectionEquality().hash(_menu),
      modifield);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MenuModelCopyWith<_$_MenuModel> get copyWith =>
      __$$_MenuModelCopyWithImpl<_$_MenuModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MenuModelToJson(
      this,
    );
  }
}

abstract class _MenuModel implements MenuModel {
  factory _MenuModel(
      {required final List<CategoryModel> category,
      required final List<ProductModel> menu,
      required final ModifiersGroupModel modifield}) = _$_MenuModel;

  factory _MenuModel.fromJson(Map<String, dynamic> json) =
      _$_MenuModel.fromJson;

  @override
  List<CategoryModel> get category;
  @override
  List<ProductModel> get menu;
  @override
  ModifiersGroupModel get modifield;
  @override
  @JsonKey(ignore: true)
  _$$_MenuModelCopyWith<_$_MenuModel> get copyWith =>
      throw _privateConstructorUsedError;
}
