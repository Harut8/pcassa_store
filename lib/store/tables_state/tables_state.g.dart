// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tables_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TablesState on TablesStateBase, Store {
  Computed<List<TableModel>>? _$tablesComputed;

  @override
  List<TableModel> get tables =>
      (_$tablesComputed ??= Computed<List<TableModel>>(() => super.tables,
              name: 'TablesStateBase.tables'))
          .value;

  late final _$tableGroupsAtom =
      Atom(name: 'TablesStateBase.tableGroups', context: context);

  @override
  ObservableList<TableGroupModel> get tableGroups {
    _$tableGroupsAtom.reportRead();
    return super.tableGroups;
  }

  @override
  set tableGroups(ObservableList<TableGroupModel> value) {
    _$tableGroupsAtom.reportWrite(value, super.tableGroups, () {
      super.tableGroups = value;
    });
  }

  late final _$selectedTableGroupIdAtom =
      Atom(name: 'TablesStateBase.selectedTableGroupId', context: context);

  @override
  int get selectedTableGroupId {
    _$selectedTableGroupIdAtom.reportRead();
    return super.selectedTableGroupId;
  }

  @override
  set selectedTableGroupId(int value) {
    _$selectedTableGroupIdAtom.reportWrite(value, super.selectedTableGroupId,
        () {
      super.selectedTableGroupId = value;
    });
  }

  late final _$getTableGroupsAsyncAction =
      AsyncAction('TablesStateBase.getTableGroups', context: context);

  @override
  Future<void> getTableGroups() {
    return _$getTableGroupsAsyncAction.run(() => super.getTableGroups());
  }

  @override
  String toString() {
    return '''
tableGroups: ${tableGroups},
selectedTableGroupId: ${selectedTableGroupId},
tables: ${tables}
    ''';
  }
}
