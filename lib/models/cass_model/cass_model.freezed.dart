// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cass_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CassModel _$CassModelFromJson(Map<String, dynamic> json) {
  return _CassModel.fromJson(json);
}

/// @nodoc
mixin _$CassModel {
  double? get sale => throw _privateConstructorUsedError;
  CassItemsModel? get inkass => throw _privateConstructorUsedError;
  CassItemsModel? get vnes => throw _privateConstructorUsedError;
  double? get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CassModelCopyWith<CassModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CassModelCopyWith<$Res> {
  factory $CassModelCopyWith(CassModel value, $Res Function(CassModel) then) =
      _$CassModelCopyWithImpl<$Res, CassModel>;
  @useResult
  $Res call(
      {double? sale,
      CassItemsModel? inkass,
      CassItemsModel? vnes,
      double? amount});

  $CassItemsModelCopyWith<$Res>? get inkass;
  $CassItemsModelCopyWith<$Res>? get vnes;
}

/// @nodoc
class _$CassModelCopyWithImpl<$Res, $Val extends CassModel>
    implements $CassModelCopyWith<$Res> {
  _$CassModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sale = freezed,
    Object? inkass = freezed,
    Object? vnes = freezed,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      sale: freezed == sale
          ? _value.sale
          : sale // ignore: cast_nullable_to_non_nullable
              as double?,
      inkass: freezed == inkass
          ? _value.inkass
          : inkass // ignore: cast_nullable_to_non_nullable
              as CassItemsModel?,
      vnes: freezed == vnes
          ? _value.vnes
          : vnes // ignore: cast_nullable_to_non_nullable
              as CassItemsModel?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CassItemsModelCopyWith<$Res>? get inkass {
    if (_value.inkass == null) {
      return null;
    }

    return $CassItemsModelCopyWith<$Res>(_value.inkass!, (value) {
      return _then(_value.copyWith(inkass: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CassItemsModelCopyWith<$Res>? get vnes {
    if (_value.vnes == null) {
      return null;
    }

    return $CassItemsModelCopyWith<$Res>(_value.vnes!, (value) {
      return _then(_value.copyWith(vnes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CassModelCopyWith<$Res> implements $CassModelCopyWith<$Res> {
  factory _$$_CassModelCopyWith(
          _$_CassModel value, $Res Function(_$_CassModel) then) =
      __$$_CassModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? sale,
      CassItemsModel? inkass,
      CassItemsModel? vnes,
      double? amount});

  @override
  $CassItemsModelCopyWith<$Res>? get inkass;
  @override
  $CassItemsModelCopyWith<$Res>? get vnes;
}

/// @nodoc
class __$$_CassModelCopyWithImpl<$Res>
    extends _$CassModelCopyWithImpl<$Res, _$_CassModel>
    implements _$$_CassModelCopyWith<$Res> {
  __$$_CassModelCopyWithImpl(
      _$_CassModel _value, $Res Function(_$_CassModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sale = freezed,
    Object? inkass = freezed,
    Object? vnes = freezed,
    Object? amount = freezed,
  }) {
    return _then(_$_CassModel(
      sale: freezed == sale
          ? _value.sale
          : sale // ignore: cast_nullable_to_non_nullable
              as double?,
      inkass: freezed == inkass
          ? _value.inkass
          : inkass // ignore: cast_nullable_to_non_nullable
              as CassItemsModel?,
      vnes: freezed == vnes
          ? _value.vnes
          : vnes // ignore: cast_nullable_to_non_nullable
              as CassItemsModel?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CassModel implements _CassModel {
  _$_CassModel(
      {required this.sale,
      required this.inkass,
      required this.vnes,
      required this.amount});

  factory _$_CassModel.fromJson(Map<String, dynamic> json) =>
      _$$_CassModelFromJson(json);

  @override
  final double? sale;
  @override
  final CassItemsModel? inkass;
  @override
  final CassItemsModel? vnes;
  @override
  final double? amount;

  @override
  String toString() {
    return 'CassModel(sale: $sale, inkass: $inkass, vnes: $vnes, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CassModel &&
            (identical(other.sale, sale) || other.sale == sale) &&
            (identical(other.inkass, inkass) || other.inkass == inkass) &&
            (identical(other.vnes, vnes) || other.vnes == vnes) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, sale, inkass, vnes, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CassModelCopyWith<_$_CassModel> get copyWith =>
      __$$_CassModelCopyWithImpl<_$_CassModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CassModelToJson(
      this,
    );
  }
}

abstract class _CassModel implements CassModel {
  factory _CassModel(
      {required final double? sale,
      required final CassItemsModel? inkass,
      required final CassItemsModel? vnes,
      required final double? amount}) = _$_CassModel;

  factory _CassModel.fromJson(Map<String, dynamic> json) =
      _$_CassModel.fromJson;

  @override
  double? get sale;
  @override
  CassItemsModel? get inkass;
  @override
  CassItemsModel? get vnes;
  @override
  double? get amount;
  @override
  @JsonKey(ignore: true)
  _$$_CassModelCopyWith<_$_CassModel> get copyWith =>
      throw _privateConstructorUsedError;
}
