// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'savedorder_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SavedOrderModel _$SavedOrderModelFromJson(Map<String, dynamic> json) {
  return _SavedOrderModel.fromJson(json);
}

/// @nodoc
mixin _$SavedOrderModel {
  int? get group_id => throw _privateConstructorUsedError;
  int? get orderid => throw _privateConstructorUsedError;
  String? get table_name => throw _privateConstructorUsedError;
  String? get waiter_name => throw _privateConstructorUsedError;
  DateTime? get created_at => throw _privateConstructorUsedError;
  int? get saleprice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SavedOrderModelCopyWith<SavedOrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavedOrderModelCopyWith<$Res> {
  factory $SavedOrderModelCopyWith(
          SavedOrderModel value, $Res Function(SavedOrderModel) then) =
      _$SavedOrderModelCopyWithImpl<$Res, SavedOrderModel>;
  @useResult
  $Res call(
      {int? group_id,
      int? orderid,
      String? table_name,
      String? waiter_name,
      DateTime? created_at,
      int? saleprice});
}

/// @nodoc
class _$SavedOrderModelCopyWithImpl<$Res, $Val extends SavedOrderModel>
    implements $SavedOrderModelCopyWith<$Res> {
  _$SavedOrderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group_id = freezed,
    Object? orderid = freezed,
    Object? table_name = freezed,
    Object? waiter_name = freezed,
    Object? created_at = freezed,
    Object? saleprice = freezed,
  }) {
    return _then(_value.copyWith(
      group_id: freezed == group_id
          ? _value.group_id
          : group_id // ignore: cast_nullable_to_non_nullable
              as int?,
      orderid: freezed == orderid
          ? _value.orderid
          : orderid // ignore: cast_nullable_to_non_nullable
              as int?,
      table_name: freezed == table_name
          ? _value.table_name
          : table_name // ignore: cast_nullable_to_non_nullable
              as String?,
      waiter_name: freezed == waiter_name
          ? _value.waiter_name
          : waiter_name // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      saleprice: freezed == saleprice
          ? _value.saleprice
          : saleprice // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SavedOrderModelCopyWith<$Res>
    implements $SavedOrderModelCopyWith<$Res> {
  factory _$$_SavedOrderModelCopyWith(
          _$_SavedOrderModel value, $Res Function(_$_SavedOrderModel) then) =
      __$$_SavedOrderModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? group_id,
      int? orderid,
      String? table_name,
      String? waiter_name,
      DateTime? created_at,
      int? saleprice});
}

/// @nodoc
class __$$_SavedOrderModelCopyWithImpl<$Res>
    extends _$SavedOrderModelCopyWithImpl<$Res, _$_SavedOrderModel>
    implements _$$_SavedOrderModelCopyWith<$Res> {
  __$$_SavedOrderModelCopyWithImpl(
      _$_SavedOrderModel _value, $Res Function(_$_SavedOrderModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group_id = freezed,
    Object? orderid = freezed,
    Object? table_name = freezed,
    Object? waiter_name = freezed,
    Object? created_at = freezed,
    Object? saleprice = freezed,
  }) {
    return _then(_$_SavedOrderModel(
      group_id: freezed == group_id
          ? _value.group_id
          : group_id // ignore: cast_nullable_to_non_nullable
              as int?,
      orderid: freezed == orderid
          ? _value.orderid
          : orderid // ignore: cast_nullable_to_non_nullable
              as int?,
      table_name: freezed == table_name
          ? _value.table_name
          : table_name // ignore: cast_nullable_to_non_nullable
              as String?,
      waiter_name: freezed == waiter_name
          ? _value.waiter_name
          : waiter_name // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      saleprice: freezed == saleprice
          ? _value.saleprice
          : saleprice // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SavedOrderModel implements _SavedOrderModel {
  _$_SavedOrderModel(
      {this.group_id,
      this.orderid,
      this.table_name,
      this.waiter_name,
      this.created_at,
      this.saleprice});

  factory _$_SavedOrderModel.fromJson(Map<String, dynamic> json) =>
      _$$_SavedOrderModelFromJson(json);

  @override
  final int? group_id;
  @override
  final int? orderid;
  @override
  final String? table_name;
  @override
  final String? waiter_name;
  @override
  final DateTime? created_at;
  @override
  final int? saleprice;

  @override
  String toString() {
    return 'SavedOrderModel(group_id: $group_id, orderid: $orderid, table_name: $table_name, waiter_name: $waiter_name, created_at: $created_at, saleprice: $saleprice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SavedOrderModel &&
            (identical(other.group_id, group_id) ||
                other.group_id == group_id) &&
            (identical(other.orderid, orderid) || other.orderid == orderid) &&
            (identical(other.table_name, table_name) ||
                other.table_name == table_name) &&
            (identical(other.waiter_name, waiter_name) ||
                other.waiter_name == waiter_name) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.saleprice, saleprice) ||
                other.saleprice == saleprice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, group_id, orderid, table_name,
      waiter_name, created_at, saleprice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SavedOrderModelCopyWith<_$_SavedOrderModel> get copyWith =>
      __$$_SavedOrderModelCopyWithImpl<_$_SavedOrderModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SavedOrderModelToJson(
      this,
    );
  }
}

abstract class _SavedOrderModel implements SavedOrderModel {
  factory _SavedOrderModel(
      {final int? group_id,
      final int? orderid,
      final String? table_name,
      final String? waiter_name,
      final DateTime? created_at,
      final int? saleprice}) = _$_SavedOrderModel;

  factory _SavedOrderModel.fromJson(Map<String, dynamic> json) =
      _$_SavedOrderModel.fromJson;

  @override
  int? get group_id;
  @override
  int? get orderid;
  @override
  String? get table_name;
  @override
  String? get waiter_name;
  @override
  DateTime? get created_at;
  @override
  int? get saleprice;
  @override
  @JsonKey(ignore: true)
  _$$_SavedOrderModelCopyWith<_$_SavedOrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}
