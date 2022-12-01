import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../services.dart';
import '../store/basket_state/basket_state.dart';
import '../store/services_state/services_state.dart';
import '../themes/app_colors.dart';
import '../widgets/custom_button.dart';
import 'modifier_modal.dart';
import 'widgets/modal_header.dart';

Future<void> onShowTopProductsModal({
  required BuildContext context,
}) async {
  final servicesState = GetIt.I<ServicesState>();
  final basketState = GetIt.I<BasketState>();
  final colorState = GetIt.I<AppColorobs>();
  final topProducts = servicesState.products.where((product) => product.top);
  await showDialog(
    context: context,
    builder: (BuildContext context) {
      return SimpleDialog(
        titlePadding: EdgeInsets.zero,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
        title: ModalHeader(title: 'topProducts'.tr()),
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.6,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 12,
                horizontal: 24,
              ),
              child: Column(
                children: [
                  Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: topProducts
                        .map(
                          (item) => CustomButton(
                            onTap: () async {
                              await basketState.onAddToBasket(item);
                              await router.pop();
                              if (item.modifrequired) {
                                await onShowModifiersModal(context: context);
                              }
                            },
                            padding: const EdgeInsets.symmetric(
                              vertical: 16,
                              horizontal: 28,
                            ),
                            minimumSize: const Size(200, 100),
                            backgroundColor:  colorState.isDark == false
                              ? AppColors.appLightGreen
                              : AppColors.appLightPink,
                            overlayColor: colorState.isDark == false
                              ? AppColors.appLightGreen
                              : AppColors.appLightPink,
                            foregroundColor: AppColors.appBlack,
                            child: Text(
                              item.name!,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )
                        .toList(),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      );
    },
  );
}
