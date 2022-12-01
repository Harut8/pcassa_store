import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pcassa/models/basket_item_model/basket_item_model.dart';

import '../models/modifier_model/modifier_model.dart';
import '../store/basket_state/basket_state.dart';
import '../store/services_state/services_state.dart';
import '../themes/app_colors.dart';
import '../widgets/custom_button.dart';
import 'widgets/modal_header.dart';

Future<void> onShowModifiersModal({
  required BuildContext context,
}) async {
  final servicesState = GetIt.I<ServicesState>();
  final basketState = GetIt.I<BasketState>();
  //print(basketState.basket);
  // final mainModifiers = servicesState.modifiersGroups.main.where(
  //   (modifier) =>
  //       //basketState.selectedBasketItem!.guid_mod.contains(modifier.guid),
  // );
  // final optionalModifiers = servicesState.modifiersGroups.optional.where(
  //   (modifier) =>
  //       basketState.selectedBasketItem!.guid_mod.contains(modifier.guid),
  // );
  final mainModifiers = [];
  final optionalModifiers = [];
  

  void onAddModifier(ModifierModel modifier) {
    // for (var i = 0;
    //     i < servicesState.selectedBasketItem!.modifiers.length;
    //     i++) {
    //   if (servicesState.selectedBasketItem!.modifiers[i].guid ==
    //       modifier.guid) {
    //     servicesState.selectedBasketItem!.modifiers[i] =
    //         servicesState.selectedBasketItem!.modifiers[i].copyWith(
    //             count:
    //                 servicesState.selectedBasketItem!.modifiers[i].count + 1);
    //   }
    // }
    // final list = servicesState.selectedBasketItem!.modifiers;
    // list.add(modifier);
    // // servicesState.selectedBasketItem!.modifiers.add(modifier);
    //
    // basketState.onUpdateBasket(servicesState.selectedBasketItem!);
    // router.pop();
  }

  await showDialog(
    context: context,
    builder: (BuildContext context) {
      return SimpleDialog(
        titlePadding: EdgeInsets.zero,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
        title: ModalHeader(
          title: 'modifiers'.tr(),
        ),
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.6,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 12,
                horizontal: 24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (mainModifiers.isNotEmpty)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 12),
                        Text('main'.tr()),
                        const SizedBox(height: 12),
                        Wrap(
                          spacing: 10,
                          runSpacing: 10,
                          children: mainModifiers
                              .map(
                                (item) => CustomButton(
                                  onTap: () {
                                    onAddModifier(item);
                                  },
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 16,
                                    horizontal: 28,
                                  ),
                                  minimumSize: const Size(200, 100),
                                  overlayColor: AppColors.appRed,
                                  child: Text(
                                    item.name,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                      ],
                    ),
                  if (optionalModifiers.isNotEmpty)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 12),
                        Text('optional'.tr()),
                        const SizedBox(height: 12),
                        Wrap(
                          spacing: 10,
                          runSpacing: 10,
                          children: optionalModifiers
                              .map(
                                (item) => CustomButton(
                                  onTap: () {
                                    onAddModifier(item);
                                  },
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 16,
                                    horizontal: 28,
                                  ),
                                  minimumSize: const Size(200, 100),
                                  overlayColor: AppColors.appGreen,
                                  child: Text(
                                    item.name,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                      ],
                    ),
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ),
        ],
      );
    },
  );
}
