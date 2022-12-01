import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../../../models/category_model/category_model.dart';
import '../../../store/services_state/services_state.dart';
import '../../../themes/app_colors.dart';
import '../../../widgets/custom_button.dart';

class MenuItems extends StatefulWidget {
  MenuItems({
    Key? key,
  }) : super(key: key);

  @override
  State<MenuItems> createState() => _MenuItemsState();
}

class _MenuItemsState extends State<MenuItems> {
  final servicesState = GetIt.I<ServicesState>();
  final colorState = GetIt.I<AppColorobs>();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      height: MediaQuery.of(context).size.height,
      //color: AppColors.appWhite,
      child: Observer(
        builder: (_) => SingleChildScrollView(
          child: Column(
            children: servicesState.categoriesFirstLevel
                .map(
                  (category) => CustomButton(
                    onTap: () {
                      onTap(category);
                    },
                    minimumSize: Size(
                        400, (MediaQuery.of(context).size.height - 48) / 8),
                    backgroundColor:
                        category.guid == servicesState.selectedMainCategoryId
                            ? colorState.isDark == false?AppColors.appRed:AppColors.appDarkPink
                            : colorState.isDark == false?Color.fromARGB(255, 255, 147, 145):AppColors.appPink,
                    foregroundColor: AppColors.appWhite,
                    child: Text(
                      category.caption!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: AppColors.appWhite),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }

  void onTap(CategoryModel selectedMainCategory) {
    servicesState.onFilterCategory(selectedMainCategory);
  }
}
