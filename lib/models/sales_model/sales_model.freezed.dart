// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sales_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SalesModel _$SalesModelFromJson(Map<String, dynamic> json) {
  return _SalesModel.fromJson(json);
}

/// @nodoc
mixin _$SalesModel {
  double? get summa => throw _privateConstructorUsedError;
  List<ItemsModel>? get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SalesModelCopyWith<SalesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesModelCopyWith<$Res> {
  factory $SalesModelCopyWith(
          SalesModel value, $Res Function(SalesModel) then) =
      _$SalesModelCopyWithImpl<$Res, SalesModel>;
  @useResult
  $Res call({double? summa, List<ItemsModel>? items});
}

/// @nodoc
class _$SalesModelCopyWithImpl<$Res, $Val extends SalesModel>
    implements $SalesModelCopyWith<$Res> {
  _$SalesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? summa = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      summa: freezed == summa
          ? _value.summa
          : summa // ignore: cast_nullable_to_non_nullable
              as double?,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemsModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SalesModelCopyWith<$Res>
    implements $SalesModelCopyWith<$Res> {
  factory _$$_SalesModelCopyWith(
          _$_SalesModel value, $Res Function(_$_SalesModel) then) =
      __$$_SalesModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? summa, List<ItemsModel>? items});
}

/// @nodoc
class __$$_SalesModelCopyWithImpl<$Res>
    extends _$SalesModelCopyWithImpl<$Res, _$_SalesModel>
    implements _$$_SalesModelCopyWith<$Res> {
  __$$_SalesModelCopyWithImpl(
      _$_SalesModel _value, $Res Function(_$_SalesModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? summa = freezed,
    Object? items = freezed,
  }) {
    return _then(_$_SalesModel(
      summa: freezed == summa
          ? _value.summa
          : summa // ignore: cast_nullable_to_non_nullable
              as double?,
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemsModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SalesModel implements _SalesModel {
  _$_SalesModel({required this.summa, required final List<ItemsModel>? items})
      : _items = items;

  factory _$_SalesModel.fromJson(Map<String, dynamic> json) =>
      _$$_SalesModelFromJson(json);

  @override
  final double? summa;
  final List<ItemsModel>? _items;
  @override
  List<ItemsModel>? get items {
    final value = _items;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SalesModel(summa: $summa, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SalesModel &&
            (identical(other.summa, summa) || other.summa == summa) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, summa, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SalesModelCopyWith<_$_SalesModel> get copyWith =>
      __$$_SalesModelCopyWithImpl<_$_SalesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SalesModelToJson(
      this,
    );
  }
}

abstract class _SalesModel implements SalesModel {
  factory _SalesModel(
      {required final double? summa,
      required final List<ItemsModel>? items}) = _$_SalesModel;

  factory _SalesModel.fromJson(Map<String, dynamic> json) =
      _$_SalesModel.fromJson;

  @override
  double? get summa;
  @override
  List<ItemsModel>? get items;
  @override
  @JsonKey(ignore: true)
  _$$_SalesModelCopyWith<_$_SalesModel> get copyWith =>
      throw _privateConstructorUsedError;
}
