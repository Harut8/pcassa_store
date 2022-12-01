// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_sid_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetSidModel _$GetSidModelFromJson(Map<String, dynamic> json) {
  return _GetSidModel.fromJson(json);
}

/// @nodoc
mixin _$GetSidModel {
  String get sid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetSidModelCopyWith<GetSidModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetSidModelCopyWith<$Res> {
  factory $GetSidModelCopyWith(
          GetSidModel value, $Res Function(GetSidModel) then) =
      _$GetSidModelCopyWithImpl<$Res, GetSidModel>;
  @useResult
  $Res call({String sid});
}

/// @nodoc
class _$GetSidModelCopyWithImpl<$Res, $Val extends GetSidModel>
    implements $GetSidModelCopyWith<$Res> {
  _$GetSidModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sid = null,
  }) {
    return _then(_value.copyWith(
      sid: null == sid
          ? _value.sid
          : sid // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetSidModelCopyWith<$Res>
    implements $GetSidModelCopyWith<$Res> {
  factory _$$_GetSidModelCopyWith(
          _$_GetSidModel value, $Res Function(_$_GetSidModel) then) =
      __$$_GetSidModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String sid});
}

/// @nodoc
class __$$_GetSidModelCopyWithImpl<$Res>
    extends _$GetSidModelCopyWithImpl<$Res, _$_GetSidModel>
    implements _$$_GetSidModelCopyWith<$Res> {
  __$$_GetSidModelCopyWithImpl(
      _$_GetSidModel _value, $Res Function(_$_GetSidModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sid = null,
  }) {
    return _then(_$_GetSidModel(
      sid: null == sid
          ? _value.sid
          : sid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetSidModel implements _GetSidModel {
  _$_GetSidModel({required this.sid});

  factory _$_GetSidModel.fromJson(Map<String, dynamic> json) =>
      _$$_GetSidModelFromJson(json);

  @override
  final String sid;

  @override
  String toString() {
    return 'GetSidModel(sid: $sid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetSidModel &&
            (identical(other.sid, sid) || other.sid == sid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, sid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetSidModelCopyWith<_$_GetSidModel> get copyWith =>
      __$$_GetSidModelCopyWithImpl<_$_GetSidModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetSidModelToJson(
      this,
    );
  }
}

abstract class _GetSidModel implements GetSidModel {
  factory _GetSidModel({required final String sid}) = _$_GetSidModel;

  factory _GetSidModel.fromJson(Map<String, dynamic> json) =
      _$_GetSidModel.fromJson;

  @override
  String get sid;
  @override
  @JsonKey(ignore: true)
  _$$_GetSidModelCopyWith<_$_GetSidModel> get copyWith =>
      throw _privateConstructorUsedError;
}
