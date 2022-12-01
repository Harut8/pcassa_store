// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'payment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentModel _$PaymentModelFromJson(Map<String, dynamic> json) {
  return _PaymentModel.fromJson(json);
}

/// @nodoc
mixin _$PaymentModel {
  String get orderid => throw _privateConstructorUsedError;
  int get cod => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  int get tip => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentModelCopyWith<PaymentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentModelCopyWith<$Res> {
  factory $PaymentModelCopyWith(
          PaymentModel value, $Res Function(PaymentModel) then) =
      _$PaymentModelCopyWithImpl<$Res, PaymentModel>;
  @useResult
  $Res call({String orderid, int cod, double amount, int tip});
}

/// @nodoc
class _$PaymentModelCopyWithImpl<$Res, $Val extends PaymentModel>
    implements $PaymentModelCopyWith<$Res> {
  _$PaymentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderid = null,
    Object? cod = null,
    Object? amount = null,
    Object? tip = null,
  }) {
    return _then(_value.copyWith(
      orderid: null == orderid
          ? _value.orderid
          : orderid // ignore: cast_nullable_to_non_nullable
              as String,
      cod: null == cod
          ? _value.cod
          : cod // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      tip: null == tip
          ? _value.tip
          : tip // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentModelCopyWith<$Res>
    implements $PaymentModelCopyWith<$Res> {
  factory _$$_PaymentModelCopyWith(
          _$_PaymentModel value, $Res Function(_$_PaymentModel) then) =
      __$$_PaymentModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String orderid, int cod, double amount, int tip});
}

/// @nodoc
class __$$_PaymentModelCopyWithImpl<$Res>
    extends _$PaymentModelCopyWithImpl<$Res, _$_PaymentModel>
    implements _$$_PaymentModelCopyWith<$Res> {
  __$$_PaymentModelCopyWithImpl(
      _$_PaymentModel _value, $Res Function(_$_PaymentModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderid = null,
    Object? cod = null,
    Object? amount = null,
    Object? tip = null,
  }) {
    return _then(_$_PaymentModel(
      orderid: null == orderid
          ? _value.orderid
          : orderid // ignore: cast_nullable_to_non_nullable
              as String,
      cod: null == cod
          ? _value.cod
          : cod // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      tip: null == tip
          ? _value.tip
          : tip // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentModel extends _PaymentModel {
  _$_PaymentModel(
      {required this.orderid,
      required this.cod,
      required this.amount,
      required this.tip})
      : super._();

  factory _$_PaymentModel.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentModelFromJson(json);

  @override
  final String orderid;
  @override
  final int cod;
  @override
  final double amount;
  @override
  final int tip;

  @override
  String toString() {
    return 'PaymentModel(orderid: $orderid, cod: $cod, amount: $amount, tip: $tip)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentModel &&
            (identical(other.orderid, orderid) || other.orderid == orderid) &&
            (identical(other.cod, cod) || other.cod == cod) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.tip, tip) || other.tip == tip));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, orderid, cod, amount, tip);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentModelCopyWith<_$_PaymentModel> get copyWith =>
      __$$_PaymentModelCopyWithImpl<_$_PaymentModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentModelToJson(
      this,
    );
  }
}

abstract class _PaymentModel extends PaymentModel {
  factory _PaymentModel(
      {required final String orderid,
      required final int cod,
      required final double amount,
      required final int tip}) = _$_PaymentModel;
  _PaymentModel._() : super._();

  factory _PaymentModel.fromJson(Map<String, dynamic> json) =
      _$_PaymentModel.fromJson;

  @override
  String get orderid;
  @override
  int get cod;
  @override
  double get amount;
  @override
  int get tip;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentModelCopyWith<_$_PaymentModel> get copyWith =>
      throw _privateConstructorUsedError;
}
