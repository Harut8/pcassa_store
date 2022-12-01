import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../store/basket_state/basket_state.dart';
import '../store/search_state/search_state.dart';
import '../store/services_state/services_state.dart';
import '../themes/app_colors.dart';
import '../widgets/custom_button.dart';
import '../widgets/pin_code_keyboard.dart';
import 'widgets/modal_header.dart';

Future<void> showSearchDialog({
  required BuildContext context,
  required String title,
}) async {
  final servicesState = GetIt.I<ServicesState>();
  final basketState = GetIt.I<BasketState>();
  final searchState = SearchState();
  final controller = TextEditingController();
  searchState
    ..products = servicesState.products
    ..searchProducts = servicesState.products;

  final width = MediaQuery.of(context).size.width;
  final height = MediaQuery.of(context).size.height;
  var colorState = GetIt.I<AppColorobs>();
  onTap(String value) {
    switch (value) {
      case 'Clear':
        controller.clear();
        searchState.onSearch(controller.text);
        break;
      case 'done':
        searchState.onSearch(controller.text);
        break;
      default:
        {
          controller.text = controller.text + value;
          searchState.onSearch(controller.text);
        }
    }
  }

  await showGeneralDialog(
    barrierLabel: '',
    barrierDismissible: true,
    context: context,
    transitionBuilder: (context, anim1, anim2, child) {
      return SlideTransition(
        position: Tween(begin: const Offset(1, 0), end: const Offset(0, 0))
            .animate(anim1),
        child: child,
      );
    },
    pageBuilder: (context, anim1, anim2) {
      return AlertDialog(
        titlePadding: EdgeInsets.zero,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
        contentPadding: const EdgeInsets.all(12),
        title: ModalHeader(title: 'search'.tr()),
        content: Expanded(
                flex: 1,
                child: SizedBox(
                  height: height * 0.7,
                  child: Column(
                    children: [
                      SizedBox(
                        width: width*0.3,
                        child: TextField(
                          onChanged: searchState.onSearch,
                          controller: controller,
                          decoration: InputDecoration(
                              hintText: 'search'.tr(),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 2, color: AppColors.appRed),
                              )),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Container(
                        height: height * 0.6,
                        decoration: BoxDecoration(
                          color: AppColors.appWhite,
                          boxShadow: [
                          BoxShadow(
                            color: AppColors.appGray,
                            blurRadius: 5,
                            offset: Offset(5, 8), // Shadow position
                          ),
                        ]),
                        child: Expanded(
                          child: SizedBox(
                            width: width*0.4,
                            height: height*0.6,
                            child: Observer(
                              builder:(context)=> GridView.count(
                                crossAxisCount: 1,
                                childAspectRatio: 10,
                                crossAxisSpacing: 10,
                                padding: const EdgeInsets.symmetric(
                                  vertical: 12,
                                  horizontal: 16,
                                ),
                                children: searchState.searchProducts
                                        .map(
                                          (product) => Padding(
                                            padding: const EdgeInsets.only(bottom: 8),
                                            child: CustomButton(
                                              onTap: () async {
                                                await basketState.onAddToBasket(product);
                                              },
                                              backgroundColor:colorState.isDark==false?
                                                  AppColors.appLightGreen:
                                                  AppColors.appLightPink,
                                              minimumSize: const Size(400, 50),
                                              padding: const EdgeInsets.all(12),
                                              foregroundColor: AppColors.appBlack,
                                              child: Text(
                                                product.name!,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ),
                                        )
                                        .toList(),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
      );
    },
  );
}
