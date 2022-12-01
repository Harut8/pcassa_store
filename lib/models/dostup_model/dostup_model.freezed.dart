// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dostup_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DostupModel _$DostupModelFromJson(Map<String, dynamic> json) {
  return _DostupModel.fromJson(json);
}

/// @nodoc
mixin _$DostupModel {
  String get discount_product => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DostupModelCopyWith<DostupModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DostupModelCopyWith<$Res> {
  factory $DostupModelCopyWith(
          DostupModel value, $Res Function(DostupModel) then) =
      _$DostupModelCopyWithImpl<$Res, DostupModel>;
  @useResult
  $Res call({String discount_product});
}

/// @nodoc
class _$DostupModelCopyWithImpl<$Res, $Val extends DostupModel>
    implements $DostupModelCopyWith<$Res> {
  _$DostupModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discount_product = null,
  }) {
    return _then(_value.copyWith(
      discount_product: null == discount_product
          ? _value.discount_product
          : discount_product // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DostupModelCopyWith<$Res>
    implements $DostupModelCopyWith<$Res> {
  factory _$$_DostupModelCopyWith(
          _$_DostupModel value, $Res Function(_$_DostupModel) then) =
      __$$_DostupModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String discount_product});
}

/// @nodoc
class __$$_DostupModelCopyWithImpl<$Res>
    extends _$DostupModelCopyWithImpl<$Res, _$_DostupModel>
    implements _$$_DostupModelCopyWith<$Res> {
  __$$_DostupModelCopyWithImpl(
      _$_DostupModel _value, $Res Function(_$_DostupModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discount_product = null,
  }) {
    return _then(_$_DostupModel(
      discount_product: null == discount_product
          ? _value.discount_product
          : discount_product // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DostupModel implements _DostupModel {
  _$_DostupModel({required this.discount_product});

  factory _$_DostupModel.fromJson(Map<String, dynamic> json) =>
      _$$_DostupModelFromJson(json);

  @override
  final String discount_product;

  @override
  String toString() {
    return 'DostupModel(discount_product: $discount_product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DostupModel &&
            (identical(other.discount_product, discount_product) ||
                other.discount_product == discount_product));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, discount_product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DostupModelCopyWith<_$_DostupModel> get copyWith =>
      __$$_DostupModelCopyWithImpl<_$_DostupModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DostupModelToJson(
      this,
    );
  }
}

abstract class _DostupModel implements DostupModel {
  factory _DostupModel({required final String discount_product}) =
      _$_DostupModel;

  factory _DostupModel.fromJson(Map<String, dynamic> json) =
      _$_DostupModel.fromJson;

  @override
  String get discount_product;
  @override
  @JsonKey(ignore: true)
  _$$_DostupModelCopyWith<_$_DostupModel> get copyWith =>
      throw _privateConstructorUsedError;
}
