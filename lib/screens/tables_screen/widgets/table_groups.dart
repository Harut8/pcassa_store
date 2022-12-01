import 'package:flutter/material.dart';
import 'package:pcassa/models/savedorder_model/savedorder_model.dart';

import '../../../models/table_group/table_group_model.dart';
import '../../../themes/app_colors.dart';
import '../../../utils/ui_utils.dart';
import 'table_group_item.dart';

class TableGroups extends StatelessWidget {
  const TableGroups({
    Key? key,
    required this.tableGroups,
    required this.onChangeGroup,
    required this.selectedTableGroupId,
  }) : super(key: key);
  final List<TableGroupModel> tableGroups;
  final Function(int) onChangeGroup;
  final int selectedTableGroupId;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(2),
      width: MediaQuery.of(context).size.width * 0.25,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        //color: AppColors.appWhite,
        borderRadius: BorderRadius.circular(4),
        boxShadow: boxShadow,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: tableGroups
              .map(
                (item) => InkWell(
                  onTap: () {
                    onChangeGroup(item.id);
                  },
                  child: TableGroupItem(
                    isSelected: item.id == selectedTableGroupId,
                    tableGroup: item,
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
