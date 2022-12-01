// ignore_for_file: avoid_redundant_argument_values, no_logic_in_create_state, prefer_typing_uninitialized_variables, prefer_final_locals, avoid_function_literals_in_foreach_calls

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:pcassa/constants/order_page_types.dart';
import 'package:pcassa/http/repositories/services_repository.dart';
import 'package:pcassa/models/basket_item_model/basket_item_model.dart';
import 'package:pcassa/models/order_info_model/order_info_model.dart';
import 'package:pcassa/models/order_model/order_model.dart';
import 'package:pcassa/screens/order_screen/widgets/right_part.dart';
import 'package:pcassa/services.dart';
import 'package:pcassa/store/auth/auth_state.dart';

import '../../../constants/custom_icons.dart';

import '../../../popups/discount_modal.dart';
import '../../../popups/modifier_modal.dart';
import '../../../popups/order_selected_settings_modal.dart';
import '../../../popups/order_settings_modal.dart';
import '../../../popups/search_modal.dart';
import '../../../router.gr.dart';
import '../../../store/basket_state/basket_state.dart';
import '../../../store/services_state/services_state.dart';
import '../../../themes/app_colors.dart';
import '../../../utils/error_handler.dart';
import '../../../widgets/custom_button.dart';
import '../../splash_screen.dart';
import '../../tables_screen/tables_screen.dart';

class ActionsPart extends StatefulWidget {
  ActionsPart({
    Key? key,
  }) : super(key: key);

  @override
  State<ActionsPart> createState() => _ActionsPartState();
}

class _ActionsPartState extends State<ActionsPart> {
  _ActionsPartState();

  final servicesState = GetIt.I<ServicesState>();
  final basketState = GetIt.I<BasketState>();
  final colorState = GetIt.I<AppColorobs>();
  final authState = GetIt.I<AuthState>();

  @override
  Widget build(BuildContext context) {
    //print(authState.dostupMap["delete_item"]);
    //print(GetIt.I<AuthState>().dostupMap);
    return Observer(
      builder: (context) => Container(
        child: Column(
          children: [
            Expanded(
              child: CustomButton(
                onTap: () {
                  colorState.pageT = 1;
                  MenuPart.focusNode.requestFocus();
                },
                backgroundColor: colorState.isDark == false
                    ? colorState.pageT == 1
                        ? AppColors.appRed
                        : AppColors.appGreen
                    : colorState.pageT == 1
                        ? AppColors.appRed
                        : AppColors.appDarkPink,
                minimumSize: const Size(
                  double.infinity,
                  double.infinity,
                ),
                foregroundColor: AppColors.appWhite,
                child: CustomIcons.search,
              ),
            ),
            const SizedBox(height: 2),
            Expanded(
              child: CustomButton(
                  onTap: () async {
                    showSearchDialog(
                      context: context,
                      title: 'search'.tr(),
                    );
                    //spasel api
                    //await basketState.onCopyToBasket(basketState.selectedBasketItem);
                  },
                  backgroundColor: colorState.isDark == false
                      ? AppColors.appGreen
                      : AppColors.appDarkPink,
                  minimumSize: const Size(
                    double.infinity,
                    double.infinity,
                  ),
                  foregroundColor: colorState.isDark == false
                      ? AppColors.appGreen
                      : AppColors.appPink,
                  child: CustomIcons.search2),
            ),
            const SizedBox(height: 2),
            Expanded(
              child: Observer(
                builder: (_) => CustomButton(
                  onTap: basketState.selectedBasketItem != null
                      ? () async {
                          if (MenuPart.checkText2
                                  .hasMatch(MenuPart.controller.text) &&
                              MenuPart.controller.text.length <= 7) {
                            if (basketState.selectedBasketItem != null) {
                              //controller.text = '';
                              try {
                                var txt = MenuPart.numText
                                    .firstMatch(MenuPart.controller.text);
                                MenuPart.controller.text =
                                    txt!.group(0).toString();
                                await basketState.onProductBasketItem(
                                    basketState.selectedBasketItem!.code,
                                    int.parse(MenuPart.controller.text));
                                MenuPart.controller.clear();
                              } catch (e) {
                                UiUtils.errorModal(
                                    context: context, errorCode: 'any');
                              }
                            }
                            MenuPart.focusNode.requestFocus();
                          } else if (MenuPart.controller.text.length == 0) {
                            if (basketState.selectedBasketItem != null) {
                              //controller.text = '';
                              try {
                                // var txt = MenuPart.numText.firstMatch(MenuPart.controller.text);
                                // MenuPart.controller.text = txt!.group(0).toString();
                                await basketState.onIncrementBasketItem(
                                    basketState.selectedBasketItem!.code);
                                MenuPart.controller.clear();
                              } catch (e) {
                                UiUtils.errorModal(
                                    context: context, errorCode: 'any');
                              }
                            }
                          }
                          // basketState.onIncrementBasketItem(
                          //     basketState.selectedBasketItem!.code);
                          MenuPart.focusNode.requestFocus();
                        }
                      : null,
                  backgroundColor: colorState.isDark == false
                      ? AppColors.appGreen
                      : AppColors.appDarkPink,
                  minimumSize: const Size(
                    double.infinity,
                    double.infinity,
                  ),
                  foregroundColor: AppColors.appWhite,
                  child: CustomIcons.plus,
                ),
              ),
            ),
            const SizedBox(height: 2),
            Expanded(
              child: Observer(
                builder: (_) => CustomButton(
                  onTap: basketState.selectedBasketItem != null &&
                          authState.dostupMap["change_price"] == null
                      ? () async {
                          if (MenuPart.numText
                              .hasMatch(MenuPart.controller.text)) {
                            var txt = MenuPart.numText
                                .firstMatch(MenuPart.controller.text);
                            MenuPart.controller.text = txt!.group(0).toString();
                            await basketState.onChangePrice(
                                basketState.selectedBasketItem!.code,
                                double.parse(MenuPart.controller.text));
                            MenuPart.controller.clear();
                            MenuPart.focusNode.requestFocus();
                          }
                        }
                      : null,
                  backgroundColor: colorState.isDark == false
                      ? AppColors.appGreen
                      : AppColors.appDarkPink,
                  minimumSize: const Size(double.infinity, double.infinity),
                  foregroundColor: AppColors.appWhite,
                  child: CustomIcons.group,
                ),
              ),
            ),
            const SizedBox(height: 2),
            Expanded(
              child: Observer(
                builder: (_) => CustomButton(
                  onTap: basketState.selectedBasketItem != null &&
                          authState.dostupMap["delete_item"] == null
                      ? () {
                          //print(basketState.basket);
                          try {
                            //print(basketState.);
                            basketState.onDeleteItem(
                                id: basketState.selectedBasketItem!.id);
                          } catch (e) {
                            UiUtils.errorModal(
                                context: context, errorCode: "Error");
                          }

                          //print(basketState.basket);
                          MenuPart.focusNode.requestFocus();
                        }
                      : null,
                  backgroundColor: colorState.isDark == false
                      ? AppColors.appGreen
                      : AppColors.appDarkPink,
                  minimumSize: const Size(double.infinity, double.infinity),
                  foregroundColor: AppColors.appRed,
                  child: CustomIcons.delete,
                ),
              ),
            ),
            const SizedBox(height: 2),
            Expanded(
              child: Observer(
                builder: (_) => CustomButton(
                  onTap: basketState.selectedBasketItem == false &&
                          authState.dostupMap["discount_product"] == null
                      ? () {}
                      : null,
                  backgroundColor: colorState.isDark == false
                      ? AppColors.appGreen
                      : AppColors.appDarkPink,
                  minimumSize: const Size(double.infinity, double.infinity),
                  foregroundColor: AppColors.appWhite,
                  child: CustomIcons.percent,
                ),
              ),
            ),
            const SizedBox(height: 2),
            Expanded(
              child: CustomButton(
                onTap: basketState.selectedBasketItem == false &&
                        authState.dostupMap["surcharge"] == null
                    ? () {
                        // onShowDiscountModal(
                        //   context: context,
                        //   title: 'discountsAndMarkups'.tr(),
                        // );
                        MenuPart.focusNode.requestFocus();
                        colorState.pageT = 2;
                      }
                    : null,
                backgroundColor: colorState.isDark == false
                    ? colorState.pageT == 2
                        ? AppColors.appRed
                        : AppColors.appGreen
                    : colorState.pageT == 2
                        ? AppColors.appRed
                        : AppColors.appDarkPink,
                minimumSize: const Size(double.infinity, double.infinity),
                foregroundColor: AppColors.appWhite,
                child: CustomIcons.discounts,
              ),
            ),
            // const SizedBox(height: 2),
            // Expanded(
            //   child: Observer(
            //     builder: (_) => CustomButton(
            //       //dzel ???????????????????
            //       onTap: basketState.hasModifiers == true
            //           ? () {
            //             //print(1);
            //               //print(basketState.selectedBasketItem?.modifiers);
            //               onShowModifiersModal(context: context);
            //             }
            //           : null,
            //       backgroundColor: colorState.isDark == false?AppColors.appGreen:AppColors.appDarkPink,
            //       minimumSize: const Size(double.infinity, double.infinity),
            //       foregroundColor: AppColors.appWhite,
            //       child: CustomIcons.modifers,
            //     ),
            //   ),
            // ),
            // const SizedBox(height: 2),
            // Expanded(
            //   child: CustomButton(
            //     onTap:basketState.basketIsEmpty != true
            //           ? ()async  {
            //               await router.pop(SplashRoute);
            //               await basketState.OnSaved();
            //             }
            //           : null,
            //     backgroundColor: colorState.isDark == false?AppColors.appGreen:AppColors.appDarkPink,
            //     minimumSize: const Size(double.infinity, double.infinity),
            //     foregroundColor: AppColors.appWhite,
            //     child: CustomIcons.save,
            //   ),
            // ),
            const SizedBox(height: 2),
          ],
        ),
      ),
    );
  }

  // callFunc() async{
  //   await basketState.onDeleteItem();
  //   MenuPart.focusNode.requestFocus();
  //   //print(basketState.selectedBasketItem);
  //   //print(basketState.basket);
  // }
  Future<void> showExtraMenu() async {
    final res = await onShowOrderSettingsModal(
      title: 'extraMenu'.tr(),
      context: context,
    );
    if (res != null) {
      await orderSelectedSettingsModal(
        type: res,
        context: context,
      );
    }
  }
}
