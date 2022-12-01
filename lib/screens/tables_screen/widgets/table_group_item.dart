import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../../constants/custom_icons.dart';
import '../../../models/table_group/table_group_model.dart';
import '../../../themes/app_colors.dart';

class TableGroupItem extends StatelessWidget {
  TableGroupItem({
    Key? key,
    required this.tableGroup,
    this.isSelected = false,
  }) : super(key: key);

  final bool isSelected;
  final TableGroupModel tableGroup;
  final colorState = GetIt.I<AppColorobs>();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      margin: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: isSelected ? colorState.isDark == false? AppColors.appGreen:AppColors.appDarkPink : AppColors.appRed,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        children: [
          if (tableGroup.linkfoto != null)
            //ExtendedImage.network(tableGroup.image)
            CustomIcons.whitetable
          else
            CustomIcons.whitetable,
          const SizedBox(width: 18),
          Text(tableGroup.name,
              style: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .copyWith(color: AppColors.appWhite)),
        ],
      ),
    );
  }
}
