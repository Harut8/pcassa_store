// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'modifiers_group_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ModifiersGroupModel _$ModifiersGroupModelFromJson(Map<String, dynamic> json) {
  return _ModifiersGroupModel.fromJson(json);
}

/// @nodoc
mixin _$ModifiersGroupModel {
  List<ModifierModel> get main => throw _privateConstructorUsedError;
  List<ModifierModel> get optional => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModifiersGroupModelCopyWith<ModifiersGroupModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModifiersGroupModelCopyWith<$Res> {
  factory $ModifiersGroupModelCopyWith(
          ModifiersGroupModel value, $Res Function(ModifiersGroupModel) then) =
      _$ModifiersGroupModelCopyWithImpl<$Res, ModifiersGroupModel>;
  @useResult
  $Res call({List<ModifierModel> main, List<ModifierModel> optional});
}

/// @nodoc
class _$ModifiersGroupModelCopyWithImpl<$Res, $Val extends ModifiersGroupModel>
    implements $ModifiersGroupModelCopyWith<$Res> {
  _$ModifiersGroupModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? main = null,
    Object? optional = null,
  }) {
    return _then(_value.copyWith(
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as List<ModifierModel>,
      optional: null == optional
          ? _value.optional
          : optional // ignore: cast_nullable_to_non_nullable
              as List<ModifierModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ModifiersGroupModelCopyWith<$Res>
    implements $ModifiersGroupModelCopyWith<$Res> {
  factory _$$_ModifiersGroupModelCopyWith(_$_ModifiersGroupModel value,
          $Res Function(_$_ModifiersGroupModel) then) =
      __$$_ModifiersGroupModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ModifierModel> main, List<ModifierModel> optional});
}

/// @nodoc
class __$$_ModifiersGroupModelCopyWithImpl<$Res>
    extends _$ModifiersGroupModelCopyWithImpl<$Res, _$_ModifiersGroupModel>
    implements _$$_ModifiersGroupModelCopyWith<$Res> {
  __$$_ModifiersGroupModelCopyWithImpl(_$_ModifiersGroupModel _value,
      $Res Function(_$_ModifiersGroupModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? main = null,
    Object? optional = null,
  }) {
    return _then(_$_ModifiersGroupModel(
      main: null == main
          ? _value._main
          : main // ignore: cast_nullable_to_non_nullable
              as List<ModifierModel>,
      optional: null == optional
          ? _value._optional
          : optional // ignore: cast_nullable_to_non_nullable
              as List<ModifierModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ModifiersGroupModel implements _ModifiersGroupModel {
  _$_ModifiersGroupModel(
      {required final List<ModifierModel> main,
      required final List<ModifierModel> optional})
      : _main = main,
        _optional = optional;

  factory _$_ModifiersGroupModel.fromJson(Map<String, dynamic> json) =>
      _$$_ModifiersGroupModelFromJson(json);

  final List<ModifierModel> _main;
  @override
  List<ModifierModel> get main {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_main);
  }

  final List<ModifierModel> _optional;
  @override
  List<ModifierModel> get optional {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_optional);
  }

  @override
  String toString() {
    return 'ModifiersGroupModel(main: $main, optional: $optional)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ModifiersGroupModel &&
            const DeepCollectionEquality().equals(other._main, _main) &&
            const DeepCollectionEquality().equals(other._optional, _optional));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_main),
      const DeepCollectionEquality().hash(_optional));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ModifiersGroupModelCopyWith<_$_ModifiersGroupModel> get copyWith =>
      __$$_ModifiersGroupModelCopyWithImpl<_$_ModifiersGroupModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ModifiersGroupModelToJson(
      this,
    );
  }
}

abstract class _ModifiersGroupModel implements ModifiersGroupModel {
  factory _ModifiersGroupModel(
      {required final List<ModifierModel> main,
      required final List<ModifierModel> optional}) = _$_ModifiersGroupModel;

  factory _ModifiersGroupModel.fromJson(Map<String, dynamic> json) =
      _$_ModifiersGroupModel.fromJson;

  @override
  List<ModifierModel> get main;
  @override
  List<ModifierModel> get optional;
  @override
  @JsonKey(ignore: true)
  _$$_ModifiersGroupModelCopyWith<_$_ModifiersGroupModel> get copyWith =>
      throw _privateConstructorUsedError;
}
