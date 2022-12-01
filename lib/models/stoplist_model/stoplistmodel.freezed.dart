// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'stoplistmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StopListModel _$StopListModelFromJson(Map<String, dynamic> json) {
  return _StopListModel.fromJson(json);
}

/// @nodoc
mixin _$StopListModel {
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get kod_tov => throw _privateConstructorUsedError;
  double get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StopListModelCopyWith<StopListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StopListModelCopyWith<$Res> {
  factory $StopListModelCopyWith(
          StopListModel value, $Res Function(StopListModel) then) =
      _$StopListModelCopyWithImpl<$Res, StopListModel>;
  @useResult
  $Res call(
      {String name, String? description, String kod_tov, double quantity});
}

/// @nodoc
class _$StopListModelCopyWithImpl<$Res, $Val extends StopListModel>
    implements $StopListModelCopyWith<$Res> {
  _$StopListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
    Object? kod_tov = null,
    Object? quantity = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      kod_tov: null == kod_tov
          ? _value.kod_tov
          : kod_tov // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StopListModelCopyWith<$Res>
    implements $StopListModelCopyWith<$Res> {
  factory _$$_StopListModelCopyWith(
          _$_StopListModel value, $Res Function(_$_StopListModel) then) =
      __$$_StopListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name, String? description, String kod_tov, double quantity});
}

/// @nodoc
class __$$_StopListModelCopyWithImpl<$Res>
    extends _$StopListModelCopyWithImpl<$Res, _$_StopListModel>
    implements _$$_StopListModelCopyWith<$Res> {
  __$$_StopListModelCopyWithImpl(
      _$_StopListModel _value, $Res Function(_$_StopListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
    Object? kod_tov = null,
    Object? quantity = null,
  }) {
    return _then(_$_StopListModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      kod_tov: null == kod_tov
          ? _value.kod_tov
          : kod_tov // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StopListModel implements _StopListModel {
  _$_StopListModel(
      {required this.name,
      required this.description,
      required this.kod_tov,
      required this.quantity});

  factory _$_StopListModel.fromJson(Map<String, dynamic> json) =>
      _$$_StopListModelFromJson(json);

  @override
  final String name;
  @override
  final String? description;
  @override
  final String kod_tov;
  @override
  final double quantity;

  @override
  String toString() {
    return 'StopListModel(name: $name, description: $description, kod_tov: $kod_tov, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StopListModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.kod_tov, kod_tov) || other.kod_tov == kod_tov) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, description, kod_tov, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StopListModelCopyWith<_$_StopListModel> get copyWith =>
      __$$_StopListModelCopyWithImpl<_$_StopListModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StopListModelToJson(
      this,
    );
  }
}

abstract class _StopListModel implements StopListModel {
  factory _StopListModel(
      {required final String name,
      required final String? description,
      required final String kod_tov,
      required final double quantity}) = _$_StopListModel;

  factory _StopListModel.fromJson(Map<String, dynamic> json) =
      _$_StopListModel.fromJson;

  @override
  String get name;
  @override
  String? get description;
  @override
  String get kod_tov;
  @override
  double get quantity;
  @override
  @JsonKey(ignore: true)
  _$$_StopListModelCopyWith<_$_StopListModel> get copyWith =>
      throw _privateConstructorUsedError;
}
