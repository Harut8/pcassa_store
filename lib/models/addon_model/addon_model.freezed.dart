// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'addon_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddonModel _$AddonModelFromJson(Map<String, dynamic> json) {
  return _AddonModel.fromJson(json);
}

/// @nodoc
mixin _$AddonModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get val => throw _privateConstructorUsedError;
  String? get tip => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddonModelCopyWith<AddonModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddonModelCopyWith<$Res> {
  factory $AddonModelCopyWith(
          AddonModel value, $Res Function(AddonModel) then) =
      _$AddonModelCopyWithImpl<$Res, AddonModel>;
  @useResult
  $Res call({int id, String name, int val, String? tip});
}

/// @nodoc
class _$AddonModelCopyWithImpl<$Res, $Val extends AddonModel>
    implements $AddonModelCopyWith<$Res> {
  _$AddonModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? val = null,
    Object? tip = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      val: null == val
          ? _value.val
          : val // ignore: cast_nullable_to_non_nullable
              as int,
      tip: freezed == tip
          ? _value.tip
          : tip // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddonModelCopyWith<$Res>
    implements $AddonModelCopyWith<$Res> {
  factory _$$_AddonModelCopyWith(
          _$_AddonModel value, $Res Function(_$_AddonModel) then) =
      __$$_AddonModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, int val, String? tip});
}

/// @nodoc
class __$$_AddonModelCopyWithImpl<$Res>
    extends _$AddonModelCopyWithImpl<$Res, _$_AddonModel>
    implements _$$_AddonModelCopyWith<$Res> {
  __$$_AddonModelCopyWithImpl(
      _$_AddonModel _value, $Res Function(_$_AddonModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? val = null,
    Object? tip = freezed,
  }) {
    return _then(_$_AddonModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      val: null == val
          ? _value.val
          : val // ignore: cast_nullable_to_non_nullable
              as int,
      tip: freezed == tip
          ? _value.tip
          : tip // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddonModel implements _AddonModel {
  _$_AddonModel(
      {required this.id, required this.name, required this.val, this.tip});

  factory _$_AddonModel.fromJson(Map<String, dynamic> json) =>
      _$$_AddonModelFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int val;
  @override
  final String? tip;

  @override
  String toString() {
    return 'AddonModel(id: $id, name: $name, val: $val, tip: $tip)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddonModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.val, val) || other.val == val) &&
            (identical(other.tip, tip) || other.tip == tip));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, val, tip);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddonModelCopyWith<_$_AddonModel> get copyWith =>
      __$$_AddonModelCopyWithImpl<_$_AddonModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddonModelToJson(
      this,
    );
  }
}

abstract class _AddonModel implements AddonModel {
  factory _AddonModel(
      {required final int id,
      required final String name,
      required final int val,
      final String? tip}) = _$_AddonModel;

  factory _AddonModel.fromJson(Map<String, dynamic> json) =
      _$_AddonModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get val;
  @override
  String? get tip;
  @override
  @JsonKey(ignore: true)
  _$$_AddonModelCopyWith<_$_AddonModel> get copyWith =>
      throw _privateConstructorUsedError;
}
