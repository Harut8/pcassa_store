import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';

import '../../http/repositories/services_repository.dart';
import '../../models/table_group/table_group_model.dart';
import '../../models/table_model/table_model.dart';
import '../auth/auth_state.dart';

part 'tables_state.g.dart';

class TablesState = TablesStateBase with _$TablesState;

abstract class TablesStateBase with Store {
  final authState = GetIt.I<AuthState>();

  @observable
  ObservableList<TableGroupModel> tableGroups =
      ObservableList<TableGroupModel>();

  @observable
  int selectedTableGroupId = 0;


  @computed
  List<TableModel> get tables => tableGroups
      .firstWhere((tableGroup) => tableGroup.id == selectedTableGroupId)
      .tables;

  @action
  Future<void> getTableGroups() async {
    final result = await ServicesRepository.getTables();
    tableGroups = result.asObservable();
    selectedTableGroupId = tableGroups.first.id;
  }
}

