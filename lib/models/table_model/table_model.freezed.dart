// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'table_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TableModel _$TableModelFromJson(Map<String, dynamic> json) {
  return _TableModel.fromJson(json);
}

/// @nodoc
mixin _$TableModel {
  int get id => throw _privateConstructorUsedError;
  String get n_t => throw _privateConstructorUsedError;
  int get k_g => throw _privateConstructorUsedError;
  String? get linkfoto => throw _privateConstructorUsedError;
  int? get skidnac => throw _privateConstructorUsedError;
  bool get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TableModelCopyWith<TableModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TableModelCopyWith<$Res> {
  factory $TableModelCopyWith(
          TableModel value, $Res Function(TableModel) then) =
      _$TableModelCopyWithImpl<$Res, TableModel>;
  @useResult
  $Res call(
      {int id,
      String n_t,
      int k_g,
      String? linkfoto,
      int? skidnac,
      bool status});
}

/// @nodoc
class _$TableModelCopyWithImpl<$Res, $Val extends TableModel>
    implements $TableModelCopyWith<$Res> {
  _$TableModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? n_t = null,
    Object? k_g = null,
    Object? linkfoto = freezed,
    Object? skidnac = freezed,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      n_t: null == n_t
          ? _value.n_t
          : n_t // ignore: cast_nullable_to_non_nullable
              as String,
      k_g: null == k_g
          ? _value.k_g
          : k_g // ignore: cast_nullable_to_non_nullable
              as int,
      linkfoto: freezed == linkfoto
          ? _value.linkfoto
          : linkfoto // ignore: cast_nullable_to_non_nullable
              as String?,
      skidnac: freezed == skidnac
          ? _value.skidnac
          : skidnac // ignore: cast_nullable_to_non_nullable
              as int?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TableModelCopyWith<$Res>
    implements $TableModelCopyWith<$Res> {
  factory _$$_TableModelCopyWith(
          _$_TableModel value, $Res Function(_$_TableModel) then) =
      __$$_TableModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String n_t,
      int k_g,
      String? linkfoto,
      int? skidnac,
      bool status});
}

/// @nodoc
class __$$_TableModelCopyWithImpl<$Res>
    extends _$TableModelCopyWithImpl<$Res, _$_TableModel>
    implements _$$_TableModelCopyWith<$Res> {
  __$$_TableModelCopyWithImpl(
      _$_TableModel _value, $Res Function(_$_TableModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? n_t = null,
    Object? k_g = null,
    Object? linkfoto = freezed,
    Object? skidnac = freezed,
    Object? status = null,
  }) {
    return _then(_$_TableModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      n_t: null == n_t
          ? _value.n_t
          : n_t // ignore: cast_nullable_to_non_nullable
              as String,
      k_g: null == k_g
          ? _value.k_g
          : k_g // ignore: cast_nullable_to_non_nullable
              as int,
      linkfoto: freezed == linkfoto
          ? _value.linkfoto
          : linkfoto // ignore: cast_nullable_to_non_nullable
              as String?,
      skidnac: freezed == skidnac
          ? _value.skidnac
          : skidnac // ignore: cast_nullable_to_non_nullable
              as int?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TableModel extends _TableModel {
  _$_TableModel(
      {required this.id,
      required this.n_t,
      required this.k_g,
      this.linkfoto,
      this.skidnac,
      this.status = false})
      : super._();

  factory _$_TableModel.fromJson(Map<String, dynamic> json) =>
      _$$_TableModelFromJson(json);

  @override
  final int id;
  @override
  final String n_t;
  @override
  final int k_g;
  @override
  final String? linkfoto;
  @override
  final int? skidnac;
  @override
  @JsonKey()
  final bool status;

  @override
  String toString() {
    return 'TableModel(id: $id, n_t: $n_t, k_g: $k_g, linkfoto: $linkfoto, skidnac: $skidnac, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TableModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.n_t, n_t) || other.n_t == n_t) &&
            (identical(other.k_g, k_g) || other.k_g == k_g) &&
            (identical(other.linkfoto, linkfoto) ||
                other.linkfoto == linkfoto) &&
            (identical(other.skidnac, skidnac) || other.skidnac == skidnac) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, n_t, k_g, linkfoto, skidnac, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TableModelCopyWith<_$_TableModel> get copyWith =>
      __$$_TableModelCopyWithImpl<_$_TableModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TableModelToJson(
      this,
    );
  }
}

abstract class _TableModel extends TableModel {
  factory _TableModel(
      {required final int id,
      required final String n_t,
      required final int k_g,
      final String? linkfoto,
      final int? skidnac,
      final bool status}) = _$_TableModel;
  _TableModel._() : super._();

  factory _TableModel.fromJson(Map<String, dynamic> json) =
      _$_TableModel.fromJson;

  @override
  int get id;
  @override
  String get n_t;
  @override
  int get k_g;
  @override
  String? get linkfoto;
  @override
  int? get skidnac;
  @override
  bool get status;
  @override
  @JsonKey(ignore: true)
  _$$_TableModelCopyWith<_$_TableModel> get copyWith =>
      throw _privateConstructorUsedError;
}
