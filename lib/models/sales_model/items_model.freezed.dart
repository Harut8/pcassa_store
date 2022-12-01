// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'items_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ItemsModel _$ItemsModelFromJson(Map<String, dynamic> json) {
  return _ItemsModel.fromJson(json);
}

/// @nodoc
mixin _$ItemsModel {
  String? get kod_tov => throw _privateConstructorUsedError;
  String? get barcode => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get ed_izm => throw _privateConstructorUsedError;
  double? get Quantity => throw _privateConstructorUsedError;
  double? get SalePrice => throw _privateConstructorUsedError;
  double? get Amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemsModelCopyWith<ItemsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemsModelCopyWith<$Res> {
  factory $ItemsModelCopyWith(
          ItemsModel value, $Res Function(ItemsModel) then) =
      _$ItemsModelCopyWithImpl<$Res, ItemsModel>;
  @useResult
  $Res call(
      {String? kod_tov,
      String? barcode,
      String? name,
      String? ed_izm,
      double? Quantity,
      double? SalePrice,
      double? Amount});
}

/// @nodoc
class _$ItemsModelCopyWithImpl<$Res, $Val extends ItemsModel>
    implements $ItemsModelCopyWith<$Res> {
  _$ItemsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kod_tov = freezed,
    Object? barcode = freezed,
    Object? name = freezed,
    Object? ed_izm = freezed,
    Object? Quantity = freezed,
    Object? SalePrice = freezed,
    Object? Amount = freezed,
  }) {
    return _then(_value.copyWith(
      kod_tov: freezed == kod_tov
          ? _value.kod_tov
          : kod_tov // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      ed_izm: freezed == ed_izm
          ? _value.ed_izm
          : ed_izm // ignore: cast_nullable_to_non_nullable
              as String?,
      Quantity: freezed == Quantity
          ? _value.Quantity
          : Quantity // ignore: cast_nullable_to_non_nullable
              as double?,
      SalePrice: freezed == SalePrice
          ? _value.SalePrice
          : SalePrice // ignore: cast_nullable_to_non_nullable
              as double?,
      Amount: freezed == Amount
          ? _value.Amount
          : Amount // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ItemsModelCopyWith<$Res>
    implements $ItemsModelCopyWith<$Res> {
  factory _$$_ItemsModelCopyWith(
          _$_ItemsModel value, $Res Function(_$_ItemsModel) then) =
      __$$_ItemsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? kod_tov,
      String? barcode,
      String? name,
      String? ed_izm,
      double? Quantity,
      double? SalePrice,
      double? Amount});
}

/// @nodoc
class __$$_ItemsModelCopyWithImpl<$Res>
    extends _$ItemsModelCopyWithImpl<$Res, _$_ItemsModel>
    implements _$$_ItemsModelCopyWith<$Res> {
  __$$_ItemsModelCopyWithImpl(
      _$_ItemsModel _value, $Res Function(_$_ItemsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kod_tov = freezed,
    Object? barcode = freezed,
    Object? name = freezed,
    Object? ed_izm = freezed,
    Object? Quantity = freezed,
    Object? SalePrice = freezed,
    Object? Amount = freezed,
  }) {
    return _then(_$_ItemsModel(
      kod_tov: freezed == kod_tov
          ? _value.kod_tov
          : kod_tov // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      ed_izm: freezed == ed_izm
          ? _value.ed_izm
          : ed_izm // ignore: cast_nullable_to_non_nullable
              as String?,
      Quantity: freezed == Quantity
          ? _value.Quantity
          : Quantity // ignore: cast_nullable_to_non_nullable
              as double?,
      SalePrice: freezed == SalePrice
          ? _value.SalePrice
          : SalePrice // ignore: cast_nullable_to_non_nullable
              as double?,
      Amount: freezed == Amount
          ? _value.Amount
          : Amount // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ItemsModel implements _ItemsModel {
  _$_ItemsModel(
      {required this.kod_tov,
      required this.barcode,
      required this.name,
      required this.ed_izm,
      required this.Quantity,
      required this.SalePrice,
      required this.Amount});

  factory _$_ItemsModel.fromJson(Map<String, dynamic> json) =>
      _$$_ItemsModelFromJson(json);

  @override
  final String? kod_tov;
  @override
  final String? barcode;
  @override
  final String? name;
  @override
  final String? ed_izm;
  @override
  final double? Quantity;
  @override
  final double? SalePrice;
  @override
  final double? Amount;

  @override
  String toString() {
    return 'ItemsModel(kod_tov: $kod_tov, barcode: $barcode, name: $name, ed_izm: $ed_izm, Quantity: $Quantity, SalePrice: $SalePrice, Amount: $Amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemsModel &&
            (identical(other.kod_tov, kod_tov) || other.kod_tov == kod_tov) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.ed_izm, ed_izm) || other.ed_izm == ed_izm) &&
            (identical(other.Quantity, Quantity) ||
                other.Quantity == Quantity) &&
            (identical(other.SalePrice, SalePrice) ||
                other.SalePrice == SalePrice) &&
            (identical(other.Amount, Amount) || other.Amount == Amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, kod_tov, barcode, name, ed_izm, Quantity, SalePrice, Amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemsModelCopyWith<_$_ItemsModel> get copyWith =>
      __$$_ItemsModelCopyWithImpl<_$_ItemsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemsModelToJson(
      this,
    );
  }
}

abstract class _ItemsModel implements ItemsModel {
  factory _ItemsModel(
      {required final String? kod_tov,
      required final String? barcode,
      required final String? name,
      required final String? ed_izm,
      required final double? Quantity,
      required final double? SalePrice,
      required final double? Amount}) = _$_ItemsModel;

  factory _ItemsModel.fromJson(Map<String, dynamic> json) =
      _$_ItemsModel.fromJson;

  @override
  String? get kod_tov;
  @override
  String? get barcode;
  @override
  String? get name;
  @override
  String? get ed_izm;
  @override
  double? get Quantity;
  @override
  double? get SalePrice;
  @override
  double? get Amount;
  @override
  @JsonKey(ignore: true)
  _$$_ItemsModelCopyWith<_$_ItemsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
