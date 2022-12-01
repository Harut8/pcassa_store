// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'nested_cass.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NestedCassModel _$NestedCassModelFromJson(Map<String, dynamic> json) {
  return _NestedCassModel.fromJson(json);
}

/// @nodoc
mixin _$NestedCassModel {
  String? get description => throw _privateConstructorUsedError;
  String? get data_d => throw _privateConstructorUsedError;
  double? get summa => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NestedCassModelCopyWith<NestedCassModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NestedCassModelCopyWith<$Res> {
  factory $NestedCassModelCopyWith(
          NestedCassModel value, $Res Function(NestedCassModel) then) =
      _$NestedCassModelCopyWithImpl<$Res, NestedCassModel>;
  @useResult
  $Res call({String? description, String? data_d, double? summa});
}

/// @nodoc
class _$NestedCassModelCopyWithImpl<$Res, $Val extends NestedCassModel>
    implements $NestedCassModelCopyWith<$Res> {
  _$NestedCassModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? data_d = freezed,
    Object? summa = freezed,
  }) {
    return _then(_value.copyWith(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      data_d: freezed == data_d
          ? _value.data_d
          : data_d // ignore: cast_nullable_to_non_nullable
              as String?,
      summa: freezed == summa
          ? _value.summa
          : summa // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NestedCassModelCopyWith<$Res>
    implements $NestedCassModelCopyWith<$Res> {
  factory _$$_NestedCassModelCopyWith(
          _$_NestedCassModel value, $Res Function(_$_NestedCassModel) then) =
      __$$_NestedCassModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? description, String? data_d, double? summa});
}

/// @nodoc
class __$$_NestedCassModelCopyWithImpl<$Res>
    extends _$NestedCassModelCopyWithImpl<$Res, _$_NestedCassModel>
    implements _$$_NestedCassModelCopyWith<$Res> {
  __$$_NestedCassModelCopyWithImpl(
      _$_NestedCassModel _value, $Res Function(_$_NestedCassModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? data_d = freezed,
    Object? summa = freezed,
  }) {
    return _then(_$_NestedCassModel(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      data_d: freezed == data_d
          ? _value.data_d
          : data_d // ignore: cast_nullable_to_non_nullable
              as String?,
      summa: freezed == summa
          ? _value.summa
          : summa // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NestedCassModel implements _NestedCassModel {
  _$_NestedCassModel(
      {required this.description, required this.data_d, required this.summa});

  factory _$_NestedCassModel.fromJson(Map<String, dynamic> json) =>
      _$$_NestedCassModelFromJson(json);

  @override
  final String? description;
  @override
  final String? data_d;
  @override
  final double? summa;

  @override
  String toString() {
    return 'NestedCassModel(description: $description, data_d: $data_d, summa: $summa)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NestedCassModel &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.data_d, data_d) || other.data_d == data_d) &&
            (identical(other.summa, summa) || other.summa == summa));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, description, data_d, summa);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NestedCassModelCopyWith<_$_NestedCassModel> get copyWith =>
      __$$_NestedCassModelCopyWithImpl<_$_NestedCassModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NestedCassModelToJson(
      this,
    );
  }
}

abstract class _NestedCassModel implements NestedCassModel {
  factory _NestedCassModel(
      {required final String? description,
      required final String? data_d,
      required final double? summa}) = _$_NestedCassModel;

  factory _NestedCassModel.fromJson(Map<String, dynamic> json) =
      _$_NestedCassModel.fromJson;

  @override
  String? get description;
  @override
  String? get data_d;
  @override
  double? get summa;
  @override
  @JsonKey(ignore: true)
  _$$_NestedCassModelCopyWith<_$_NestedCassModel> get copyWith =>
      throw _privateConstructorUsedError;
}
