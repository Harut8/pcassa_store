// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cashentryexit_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CashentryexitModel _$CashentryexitModelFromJson(Map<String, dynamic> json) {
  return _CashentryexitModel.fromJson(json);
}

/// @nodoc
mixin _$CashentryexitModel {
  String get n_smena => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get tip => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CashentryexitModelCopyWith<CashentryexitModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CashentryexitModelCopyWith<$Res> {
  factory $CashentryexitModelCopyWith(
          CashentryexitModel value, $Res Function(CashentryexitModel) then) =
      _$CashentryexitModelCopyWithImpl<$Res, CashentryexitModel>;
  @useResult
  $Res call({String n_smena, double amount, String description, int tip});
}

/// @nodoc
class _$CashentryexitModelCopyWithImpl<$Res, $Val extends CashentryexitModel>
    implements $CashentryexitModelCopyWith<$Res> {
  _$CashentryexitModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? n_smena = null,
    Object? amount = null,
    Object? description = null,
    Object? tip = null,
  }) {
    return _then(_value.copyWith(
      n_smena: null == n_smena
          ? _value.n_smena
          : n_smena // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      tip: null == tip
          ? _value.tip
          : tip // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CashentryexitModelCopyWith<$Res>
    implements $CashentryexitModelCopyWith<$Res> {
  factory _$$_CashentryexitModelCopyWith(_$_CashentryexitModel value,
          $Res Function(_$_CashentryexitModel) then) =
      __$$_CashentryexitModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String n_smena, double amount, String description, int tip});
}

/// @nodoc
class __$$_CashentryexitModelCopyWithImpl<$Res>
    extends _$CashentryexitModelCopyWithImpl<$Res, _$_CashentryexitModel>
    implements _$$_CashentryexitModelCopyWith<$Res> {
  __$$_CashentryexitModelCopyWithImpl(
      _$_CashentryexitModel _value, $Res Function(_$_CashentryexitModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? n_smena = null,
    Object? amount = null,
    Object? description = null,
    Object? tip = null,
  }) {
    return _then(_$_CashentryexitModel(
      n_smena: null == n_smena
          ? _value.n_smena
          : n_smena // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      tip: null == tip
          ? _value.tip
          : tip // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CashentryexitModel implements _CashentryexitModel {
  _$_CashentryexitModel(
      {required this.n_smena,
      required this.amount,
      required this.description,
      required this.tip});

  factory _$_CashentryexitModel.fromJson(Map<String, dynamic> json) =>
      _$$_CashentryexitModelFromJson(json);

  @override
  final String n_smena;
  @override
  final double amount;
  @override
  final String description;
  @override
  final int tip;

  @override
  String toString() {
    return 'CashentryexitModel(n_smena: $n_smena, amount: $amount, description: $description, tip: $tip)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CashentryexitModel &&
            (identical(other.n_smena, n_smena) || other.n_smena == n_smena) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.tip, tip) || other.tip == tip));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, n_smena, amount, description, tip);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CashentryexitModelCopyWith<_$_CashentryexitModel> get copyWith =>
      __$$_CashentryexitModelCopyWithImpl<_$_CashentryexitModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CashentryexitModelToJson(
      this,
    );
  }
}

abstract class _CashentryexitModel implements CashentryexitModel {
  factory _CashentryexitModel(
      {required final String n_smena,
      required final double amount,
      required final String description,
      required final int tip}) = _$_CashentryexitModel;

  factory _CashentryexitModel.fromJson(Map<String, dynamic> json) =
      _$_CashentryexitModel.fromJson;

  @override
  String get n_smena;
  @override
  double get amount;
  @override
  String get description;
  @override
  int get tip;
  @override
  @JsonKey(ignore: true)
  _$$_CashentryexitModelCopyWith<_$_CashentryexitModel> get copyWith =>
      throw _privateConstructorUsedError;
}
