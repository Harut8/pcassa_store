// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'discount_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DiscountModel _$DiscountModelFromJson(Map<String, dynamic> json) {
  return _DiscountModel.fromJson(json);
}

/// @nodoc
mixin _$DiscountModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<AddonModel> get items => throw _privateConstructorUsedError;
  String? get linkfoto => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiscountModelCopyWith<DiscountModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscountModelCopyWith<$Res> {
  factory $DiscountModelCopyWith(
          DiscountModel value, $Res Function(DiscountModel) then) =
      _$DiscountModelCopyWithImpl<$Res, DiscountModel>;
  @useResult
  $Res call({int id, String name, List<AddonModel> items, String? linkfoto});
}

/// @nodoc
class _$DiscountModelCopyWithImpl<$Res, $Val extends DiscountModel>
    implements $DiscountModelCopyWith<$Res> {
  _$DiscountModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? items = null,
    Object? linkfoto = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<AddonModel>,
      linkfoto: freezed == linkfoto
          ? _value.linkfoto
          : linkfoto // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DiscountModelCopyWith<$Res>
    implements $DiscountModelCopyWith<$Res> {
  factory _$$_DiscountModelCopyWith(
          _$_DiscountModel value, $Res Function(_$_DiscountModel) then) =
      __$$_DiscountModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, List<AddonModel> items, String? linkfoto});
}

/// @nodoc
class __$$_DiscountModelCopyWithImpl<$Res>
    extends _$DiscountModelCopyWithImpl<$Res, _$_DiscountModel>
    implements _$$_DiscountModelCopyWith<$Res> {
  __$$_DiscountModelCopyWithImpl(
      _$_DiscountModel _value, $Res Function(_$_DiscountModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? items = null,
    Object? linkfoto = freezed,
  }) {
    return _then(_$_DiscountModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<AddonModel>,
      linkfoto: freezed == linkfoto
          ? _value.linkfoto
          : linkfoto // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DiscountModel implements _DiscountModel {
  _$_DiscountModel(
      {required this.id,
      required this.name,
      final List<AddonModel> items = const <AddonModel>[],
      this.linkfoto})
      : _items = items;

  factory _$_DiscountModel.fromJson(Map<String, dynamic> json) =>
      _$$_DiscountModelFromJson(json);

  @override
  final int id;
  @override
  final String name;
  final List<AddonModel> _items;
  @override
  @JsonKey()
  List<AddonModel> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final String? linkfoto;

  @override
  String toString() {
    return 'DiscountModel(id: $id, name: $name, items: $items, linkfoto: $linkfoto)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DiscountModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.linkfoto, linkfoto) ||
                other.linkfoto == linkfoto));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name,
      const DeepCollectionEquality().hash(_items), linkfoto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DiscountModelCopyWith<_$_DiscountModel> get copyWith =>
      __$$_DiscountModelCopyWithImpl<_$_DiscountModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DiscountModelToJson(
      this,
    );
  }
}

abstract class _DiscountModel implements DiscountModel {
  factory _DiscountModel(
      {required final int id,
      required final String name,
      final List<AddonModel> items,
      final String? linkfoto}) = _$_DiscountModel;

  factory _DiscountModel.fromJson(Map<String, dynamic> json) =
      _$_DiscountModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  List<AddonModel> get items;
  @override
  String? get linkfoto;
  @override
  @JsonKey(ignore: true)
  _$$_DiscountModelCopyWith<_$_DiscountModel> get copyWith =>
      throw _privateConstructorUsedError;
}
