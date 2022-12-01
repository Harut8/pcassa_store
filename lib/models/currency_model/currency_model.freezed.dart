// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'currency_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CurrencyModel _$CurrencyModelFromJson(Map<String, dynamic> json) {
  return _CurrencyModel.fromJson(json);
}

/// @nodoc
mixin _$CurrencyModel {
  int get cod => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get b_valyuta => throw _privateConstructorUsedError;
  String? get linkfoto => throw _privateConstructorUsedError;
  int get tip => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrencyModelCopyWith<CurrencyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyModelCopyWith<$Res> {
  factory $CurrencyModelCopyWith(
          CurrencyModel value, $Res Function(CurrencyModel) then) =
      _$CurrencyModelCopyWithImpl<$Res, CurrencyModel>;
  @useResult
  $Res call({int cod, String name, bool b_valyuta, String? linkfoto, int tip});
}

/// @nodoc
class _$CurrencyModelCopyWithImpl<$Res, $Val extends CurrencyModel>
    implements $CurrencyModelCopyWith<$Res> {
  _$CurrencyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cod = null,
    Object? name = null,
    Object? b_valyuta = null,
    Object? linkfoto = freezed,
    Object? tip = null,
  }) {
    return _then(_value.copyWith(
      cod: null == cod
          ? _value.cod
          : cod // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      b_valyuta: null == b_valyuta
          ? _value.b_valyuta
          : b_valyuta // ignore: cast_nullable_to_non_nullable
              as bool,
      linkfoto: freezed == linkfoto
          ? _value.linkfoto
          : linkfoto // ignore: cast_nullable_to_non_nullable
              as String?,
      tip: null == tip
          ? _value.tip
          : tip // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CurrencyModelCopyWith<$Res>
    implements $CurrencyModelCopyWith<$Res> {
  factory _$$_CurrencyModelCopyWith(
          _$_CurrencyModel value, $Res Function(_$_CurrencyModel) then) =
      __$$_CurrencyModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int cod, String name, bool b_valyuta, String? linkfoto, int tip});
}

/// @nodoc
class __$$_CurrencyModelCopyWithImpl<$Res>
    extends _$CurrencyModelCopyWithImpl<$Res, _$_CurrencyModel>
    implements _$$_CurrencyModelCopyWith<$Res> {
  __$$_CurrencyModelCopyWithImpl(
      _$_CurrencyModel _value, $Res Function(_$_CurrencyModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cod = null,
    Object? name = null,
    Object? b_valyuta = null,
    Object? linkfoto = freezed,
    Object? tip = null,
  }) {
    return _then(_$_CurrencyModel(
      cod: null == cod
          ? _value.cod
          : cod // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      b_valyuta: null == b_valyuta
          ? _value.b_valyuta
          : b_valyuta // ignore: cast_nullable_to_non_nullable
              as bool,
      linkfoto: freezed == linkfoto
          ? _value.linkfoto
          : linkfoto // ignore: cast_nullable_to_non_nullable
              as String?,
      tip: null == tip
          ? _value.tip
          : tip // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CurrencyModel extends _CurrencyModel {
  _$_CurrencyModel(
      {required this.cod,
      required this.name,
      this.b_valyuta = false,
      this.linkfoto,
      this.tip = 0})
      : super._();

  factory _$_CurrencyModel.fromJson(Map<String, dynamic> json) =>
      _$$_CurrencyModelFromJson(json);

  @override
  final int cod;
  @override
  final String name;
  @override
  @JsonKey()
  final bool b_valyuta;
  @override
  final String? linkfoto;
  @override
  @JsonKey()
  final int tip;

  @override
  String toString() {
    return 'CurrencyModel(cod: $cod, name: $name, b_valyuta: $b_valyuta, linkfoto: $linkfoto, tip: $tip)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrencyModel &&
            (identical(other.cod, cod) || other.cod == cod) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.b_valyuta, b_valyuta) ||
                other.b_valyuta == b_valyuta) &&
            (identical(other.linkfoto, linkfoto) ||
                other.linkfoto == linkfoto) &&
            (identical(other.tip, tip) || other.tip == tip));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, cod, name, b_valyuta, linkfoto, tip);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrencyModelCopyWith<_$_CurrencyModel> get copyWith =>
      __$$_CurrencyModelCopyWithImpl<_$_CurrencyModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrencyModelToJson(
      this,
    );
  }
}

abstract class _CurrencyModel extends CurrencyModel {
  factory _CurrencyModel(
      {required final int cod,
      required final String name,
      final bool b_valyuta,
      final String? linkfoto,
      final int tip}) = _$_CurrencyModel;
  _CurrencyModel._() : super._();

  factory _CurrencyModel.fromJson(Map<String, dynamic> json) =
      _$_CurrencyModel.fromJson;

  @override
  int get cod;
  @override
  String get name;
  @override
  bool get b_valyuta;
  @override
  String? get linkfoto;
  @override
  int get tip;
  @override
  @JsonKey(ignore: true)
  _$$_CurrencyModelCopyWith<_$_CurrencyModel> get copyWith =>
      throw _privateConstructorUsedError;
}
