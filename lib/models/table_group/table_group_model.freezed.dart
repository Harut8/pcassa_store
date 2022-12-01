// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'table_group_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TableGroupModel _$TableGroupModelFromJson(Map<String, dynamic> json) {
  return _TableGroup.fromJson(json);
}

/// @nodoc
mixin _$TableGroupModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<TableModel> get tables => throw _privateConstructorUsedError;
  String? get linkfoto => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TableGroupModelCopyWith<TableGroupModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TableGroupModelCopyWith<$Res> {
  factory $TableGroupModelCopyWith(
          TableGroupModel value, $Res Function(TableGroupModel) then) =
      _$TableGroupModelCopyWithImpl<$Res, TableGroupModel>;
  @useResult
  $Res call({int id, String name, List<TableModel> tables, String? linkfoto});
}

/// @nodoc
class _$TableGroupModelCopyWithImpl<$Res, $Val extends TableGroupModel>
    implements $TableGroupModelCopyWith<$Res> {
  _$TableGroupModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? tables = null,
    Object? linkfoto = freezed,
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
      tables: null == tables
          ? _value.tables
          : tables // ignore: cast_nullable_to_non_nullable
              as List<TableModel>,
      linkfoto: freezed == linkfoto
          ? _value.linkfoto
          : linkfoto // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TableGroupCopyWith<$Res>
    implements $TableGroupModelCopyWith<$Res> {
  factory _$$_TableGroupCopyWith(
          _$_TableGroup value, $Res Function(_$_TableGroup) then) =
      __$$_TableGroupCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, List<TableModel> tables, String? linkfoto});
}

/// @nodoc
class __$$_TableGroupCopyWithImpl<$Res>
    extends _$TableGroupModelCopyWithImpl<$Res, _$_TableGroup>
    implements _$$_TableGroupCopyWith<$Res> {
  __$$_TableGroupCopyWithImpl(
      _$_TableGroup _value, $Res Function(_$_TableGroup) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? tables = null,
    Object? linkfoto = freezed,
  }) {
    return _then(_$_TableGroup(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      tables: null == tables
          ? _value._tables
          : tables // ignore: cast_nullable_to_non_nullable
              as List<TableModel>,
      linkfoto: freezed == linkfoto
          ? _value.linkfoto
          : linkfoto // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TableGroup extends _TableGroup {
  _$_TableGroup(
      {required this.id,
      required this.name,
      final List<TableModel> tables = const <TableModel>[],
      this.linkfoto})
      : _tables = tables,
        super._();

  factory _$_TableGroup.fromJson(Map<String, dynamic> json) =>
      _$$_TableGroupFromJson(json);

  @override
  final int id;
  @override
  final String name;
  final List<TableModel> _tables;
  @override
  @JsonKey()
  List<TableModel> get tables {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tables);
  }

  @override
  final String? linkfoto;

  @override
  String toString() {
    return 'TableGroupModel(id: $id, name: $name, tables: $tables, linkfoto: $linkfoto)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TableGroup &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._tables, _tables) &&
            (identical(other.linkfoto, linkfoto) ||
                other.linkfoto == linkfoto));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name,
      const DeepCollectionEquality().hash(_tables), linkfoto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TableGroupCopyWith<_$_TableGroup> get copyWith =>
      __$$_TableGroupCopyWithImpl<_$_TableGroup>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TableGroupToJson(
      this,
    );
  }
}

abstract class _TableGroup extends TableGroupModel {
  factory _TableGroup(
      {required final int id,
      required final String name,
      final List<TableModel> tables,
      final String? linkfoto}) = _$_TableGroup;
  _TableGroup._() : super._();

  factory _TableGroup.fromJson(Map<String, dynamic> json) =
      _$_TableGroup.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  List<TableModel> get tables;
  @override
  String? get linkfoto;
  @override
  @JsonKey(ignore: true)
  _$$_TableGroupCopyWith<_$_TableGroup> get copyWith =>
      throw _privateConstructorUsedError;
}
