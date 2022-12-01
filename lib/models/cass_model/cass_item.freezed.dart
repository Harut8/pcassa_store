// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cass_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CassItemsModel _$CassItemsModelFromJson(Map<String, dynamic> json) {
  return _CassItemsModel.fromJson(json);
}

/// @nodoc
mixin _$CassItemsModel {
  double? get Amount => throw _privateConstructorUsedError;
  List<NestedCassModel>? get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CassItemsModelCopyWith<CassItemsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CassItemsModelCopyWith<$Res> {
  factory $CassItemsModelCopyWith(
          CassItemsModel value, $Res Function(CassItemsModel) then) =
      _$CassItemsModelCopyWithImpl<$Res, CassItemsModel>;
  @useResult
  $Res call({double? Amount, List<NestedCassModel>? items});
}

/// @nodoc
class _$CassItemsModelCopyWithImpl<$Res, $Val extends CassItemsModel>
    implements $CassItemsModelCopyWith<$Res> {
  _$CassItemsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Amount = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      Amount: freezed == Amount
          ? _value.Amount
          : Amount // ignore: cast_nullable_to_non_nullable
              as double?,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<NestedCassModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CassItemsModelCopyWith<$Res>
    implements $CassItemsModelCopyWith<$Res> {
  factory _$$_CassItemsModelCopyWith(
          _$_CassItemsModel value, $Res Function(_$_CassItemsModel) then) =
      __$$_CassItemsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? Amount, List<NestedCassModel>? items});
}

/// @nodoc
class __$$_CassItemsModelCopyWithImpl<$Res>
    extends _$CassItemsModelCopyWithImpl<$Res, _$_CassItemsModel>
    implements _$$_CassItemsModelCopyWith<$Res> {
  __$$_CassItemsModelCopyWithImpl(
      _$_CassItemsModel _value, $Res Function(_$_CassItemsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Amount = freezed,
    Object? items = freezed,
  }) {
    return _then(_$_CassItemsModel(
      Amount: freezed == Amount
          ? _value.Amount
          : Amount // ignore: cast_nullable_to_non_nullable
              as double?,
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<NestedCassModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CassItemsModel implements _CassItemsModel {
  _$_CassItemsModel(
      {required this.Amount, required final List<NestedCassModel>? items})
      : _items = items;

  factory _$_CassItemsModel.fromJson(Map<String, dynamic> json) =>
      _$$_CassItemsModelFromJson(json);

  @override
  final double? Amount;
  final List<NestedCassModel>? _items;
  @override
  List<NestedCassModel>? get items {
    final value = _items;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CassItemsModel(Amount: $Amount, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CassItemsModel &&
            (identical(other.Amount, Amount) || other.Amount == Amount) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, Amount, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CassItemsModelCopyWith<_$_CassItemsModel> get copyWith =>
      __$$_CassItemsModelCopyWithImpl<_$_CassItemsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CassItemsModelToJson(
      this,
    );
  }
}

abstract class _CassItemsModel implements CassItemsModel {
  factory _CassItemsModel(
      {required final double? Amount,
      required final List<NestedCassModel>? items}) = _$_CassItemsModel;

  factory _CassItemsModel.fromJson(Map<String, dynamic> json) =
      _$_CassItemsModel.fromJson;

  @override
  double? get Amount;
  @override
  List<NestedCassModel>? get items;
  @override
  @JsonKey(ignore: true)
  _$$_CassItemsModelCopyWith<_$_CassItemsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
