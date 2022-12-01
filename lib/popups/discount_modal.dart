import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pcassa/store/basket_state/basket_state.dart';

import '../services.dart';
import '../store/services_state/services_state.dart';
import '../themes/app_colors.dart';
import '../widgets/custom_button.dart';
import 'widgets/modal_header.dart';
var colorState = GetIt.I<AppColorobs>();
Future<void> onShowDiscountModal({
  required BuildContext context,
  required String title,
}) async {
  await showDialog(
    context: context,
    builder: (BuildContext context) {
      return SimpleDialog(
        titlePadding: EdgeInsets.zero,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
        title: ModalHeader(title: title),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 12,
              horizontal: 24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...GetIt.I<ServicesState>()
                    .addons
                    .map(
                      (addonGroup) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Text(addonGroup.name),

                              ///TODO added icon depends discount type
                              // const SizedBox(width: 10),
                              // const Icon(CustomIcons.skidka)
                            ],
                          ),
                          const SizedBox(height: 10),
                          Wrap(
                            spacing: 10,
                            runSpacing: 10,
                            children: addonGroup.items
                                .map(
                                  (item) => CustomButton(
                                    backgroundColor: colorState.isPink == false?AppColors.appLightGreen:AppColors.appLightPink,
                                    onTap: () async{
                                      print(1);
                                      
                                      await GetIt.I<BasketState>().addDiscountToBasket(id: -item.id);
                                      router.pop;
                                    },
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 16, horizontal: 28),
                                    overlayColor: AppColors.appRed,
                                    child: Text(
                                        '${item.name} ${item.val}${item.tip}',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline4!
                                            .copyWith(
                                                color: AppColors.appBlack)),
                                  ),
                                )
                                .toList(),
                          )
                        ],
                      ),
                    )
                    .toList(),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ],
      );
    },
  );
}
