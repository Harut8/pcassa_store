import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../../models/basket_item_model/basket_item_model.dart';
import '../../themes/app_colors.dart';

class BasketItem extends StatelessWidget {
   BasketItem({
    Key? key,
    required this.item,
    required this.onTap,
    this.isSelected = false,
  }) : super(key: key);

  final BasketItemModel item;
  final bool isSelected;
  final VoidCallback onTap;
  final colorState = GetIt.I<AppColorobs>();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder:(context) =>  InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 3),
          margin: const EdgeInsets.all(3),
          decoration: BoxDecoration(
            color: isSelected ? colorState.isDark == false? AppColors.appLightGreen:AppColors.appPink : Colors.transparent,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(item.name,style: TextStyle(color: AppColors.appBlack),),
                  Text('${item.saleprice} × (${item.quantity})',style: TextStyle(color: AppColors.appBlack)),
                ],
              ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 20),
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: item.modifiers
              //         .map(
              //           (item) => Text(
              //             '${item.name} (${item.count})',
              //             style: Theme.of(context)
              //                 .textTheme
              //                 .subtitle2!
              //                 .copyWith(fontSize: 12, color:  colorState.isDark == false? AppColors.appBlack:AppColors.appWhite),
              //           ),
              //         )
              //         .toList(),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
