// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) {
  return _OrderModel.fromJson(json);
}

/// @nodoc
mixin _$OrderModel {
  OrderInfoModel get orderinfo => throw _privateConstructorUsedError;
  List<BasketItemModel> get basket => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderModelCopyWith<OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderModelCopyWith<$Res> {
  factory $OrderModelCopyWith(
          OrderModel value, $Res Function(OrderModel) then) =
      _$OrderModelCopyWithImpl<$Res, OrderModel>;
  @useResult
  $Res call({OrderInfoModel orderinfo, List<BasketItemModel> basket});

  $OrderInfoModelCopyWith<$Res> get orderinfo;
}

/// @nodoc
class _$OrderModelCopyWithImpl<$Res, $Val extends OrderModel>
    implements $OrderModelCopyWith<$Res> {
  _$OrderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderinfo = null,
    Object? basket = null,
  }) {
    return _then(_value.copyWith(
      orderinfo: null == orderinfo
          ? _value.orderinfo
          : orderinfo // ignore: cast_nullable_to_non_nullable
              as OrderInfoModel,
      basket: null == basket
          ? _value.basket
          : basket // ignore: cast_nullable_to_non_nullable
              as List<BasketItemModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderInfoModelCopyWith<$Res> get orderinfo {
    return $OrderInfoModelCopyWith<$Res>(_value.orderinfo, (value) {
      return _then(_value.copyWith(orderinfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OrderModelCopyWith<$Res>
    implements $OrderModelCopyWith<$Res> {
  factory _$$_OrderModelCopyWith(
          _$_OrderModel value, $Res Function(_$_OrderModel) then) =
      __$$_OrderModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OrderInfoModel orderinfo, List<BasketItemModel> basket});

  @override
  $OrderInfoModelCopyWith<$Res> get orderinfo;
}

/// @nodoc
class __$$_OrderModelCopyWithImpl<$Res>
    extends _$OrderModelCopyWithImpl<$Res, _$_OrderModel>
    implements _$$_OrderModelCopyWith<$Res> {
  __$$_OrderModelCopyWithImpl(
      _$_OrderModel _value, $Res Function(_$_OrderModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderinfo = null,
    Object? basket = null,
  }) {
    return _then(_$_OrderModel(
      orderinfo: null == orderinfo
          ? _value.orderinfo
          : orderinfo // ignore: cast_nullable_to_non_nullable
              as OrderInfoModel,
      basket: null == basket
          ? _value.basket
          : basket // ignore: cast_nullable_to_non_nullable
              as List<BasketItemModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderModel extends _OrderModel {
  _$_OrderModel(
      {required this.orderinfo, this.basket = const <BasketItemModel>[]})
      : super._();

  factory _$_OrderModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrderModelFromJson(json);

  @override
  final OrderInfoModel orderinfo;
  @override
  @JsonKey()
  final List<BasketItemModel> basket;

  @override
  String toString() {
    return 'OrderModel(orderinfo: $orderinfo, basket: $basket)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderModel &&
            (identical(other.orderinfo, orderinfo) ||
                other.orderinfo == orderinfo) &&
            const DeepCollectionEquality().equals(other.basket, basket));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, orderinfo, const DeepCollectionEquality().hash(basket));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderModelCopyWith<_$_OrderModel> get copyWith =>
      __$$_OrderModelCopyWithImpl<_$_OrderModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderModelToJson(
      this,
    );
  }
}

abstract class _OrderModel extends OrderModel {
  factory _OrderModel(
      {required final OrderInfoModel orderinfo,
      final List<BasketItemModel> basket}) = _$_OrderModel;
  _OrderModel._() : super._();

  factory _OrderModel.fromJson(Map<String, dynamic> json) =
      _$_OrderModel.fromJson;

  @override
  OrderInfoModel get orderinfo;
  @override
  List<BasketItemModel> get basket;
  @override
  @JsonKey(ignore: true)
  _$$_OrderModelCopyWith<_$_OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}
