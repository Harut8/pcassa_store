// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'set_sid_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SetSidModel _$SetSidModelFromJson(Map<String, dynamic> json) {
  return _SetSidModel.fromJson(json);
}

/// @nodoc
mixin _$SetSidModel {
  String get device_id => throw _privateConstructorUsedError;
  String get otvet => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetSidModelCopyWith<SetSidModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetSidModelCopyWith<$Res> {
  factory $SetSidModelCopyWith(
          SetSidModel value, $Res Function(SetSidModel) then) =
      _$SetSidModelCopyWithImpl<$Res, SetSidModel>;
  @useResult
  $Res call({String device_id, String otvet});
}

/// @nodoc
class _$SetSidModelCopyWithImpl<$Res, $Val extends SetSidModel>
    implements $SetSidModelCopyWith<$Res> {
  _$SetSidModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? device_id = null,
    Object? otvet = null,
  }) {
    return _then(_value.copyWith(
      device_id: null == device_id
          ? _value.device_id
          : device_id // ignore: cast_nullable_to_non_nullable
              as String,
      otvet: null == otvet
          ? _value.otvet
          : otvet // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SetSidModelCopyWith<$Res>
    implements $SetSidModelCopyWith<$Res> {
  factory _$$_SetSidModelCopyWith(
          _$_SetSidModel value, $Res Function(_$_SetSidModel) then) =
      __$$_SetSidModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String device_id, String otvet});
}

/// @nodoc
class __$$_SetSidModelCopyWithImpl<$Res>
    extends _$SetSidModelCopyWithImpl<$Res, _$_SetSidModel>
    implements _$$_SetSidModelCopyWith<$Res> {
  __$$_SetSidModelCopyWithImpl(
      _$_SetSidModel _value, $Res Function(_$_SetSidModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? device_id = null,
    Object? otvet = null,
  }) {
    return _then(_$_SetSidModel(
      device_id: null == device_id
          ? _value.device_id
          : device_id // ignore: cast_nullable_to_non_nullable
              as String,
      otvet: null == otvet
          ? _value.otvet
          : otvet // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SetSidModel implements _SetSidModel {
  _$_SetSidModel({required this.device_id, required this.otvet});

  factory _$_SetSidModel.fromJson(Map<String, dynamic> json) =>
      _$$_SetSidModelFromJson(json);

  @override
  final String device_id;
  @override
  final String otvet;

  @override
  String toString() {
    return 'SetSidModel(device_id: $device_id, otvet: $otvet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetSidModel &&
            (identical(other.device_id, device_id) ||
                other.device_id == device_id) &&
            (identical(other.otvet, otvet) || other.otvet == otvet));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, device_id, otvet);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetSidModelCopyWith<_$_SetSidModel> get copyWith =>
      __$$_SetSidModelCopyWithImpl<_$_SetSidModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SetSidModelToJson(
      this,
    );
  }
}

abstract class _SetSidModel implements SetSidModel {
  factory _SetSidModel(
      {required final String device_id,
      required final String otvet}) = _$_SetSidModel;

  factory _SetSidModel.fromJson(Map<String, dynamic> json) =
      _$_SetSidModel.fromJson;

  @override
  String get device_id;
  @override
  String get otvet;
  @override
  @JsonKey(ignore: true)
  _$$_SetSidModelCopyWith<_$_SetSidModel> get copyWith =>
      throw _privateConstructorUsedError;
}
