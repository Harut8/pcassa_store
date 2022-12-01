import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:pcassa/popups/incasation_modal.dart';
import 'package:pcassa/screens/nested_screen/dashboard_modal.dart';
import 'package:pcassa/screens/splash_screen.dart';
import 'package:pcassa/store/auth/auth_state.dart';
import 'package:pcassa/store/loading/loading_state.dart';
import 'package:pcassa/utils/error_handler.dart';

import '../../constants/custom_icons.dart';
import '../../constants/order_page_types.dart';
import '../../http/repositories/services_repository.dart';
import '../../popups/insertation_modal.dart';
import '../../popups/reports_modal.dart';
import '../../router.gr.dart';
import '../../services.dart';
import '../../store/basket_state/basket_state.dart';
import '../../themes/app_colors.dart';
import '../../utils/ui_utils.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/footer_content.dart';
import '../../widgets/header_content.dart';
import '../nested_screen/sales_screen.dart';

class AdminScreen extends StatefulWidget {
  AdminScreen({Key? key}) : super(key: key);
  static int typeEditor = 0;
  @override
  State<AdminScreen> createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  final authState = GetIt.I<AuthState>();
  @override
  Widget build(BuildContext context) {
    var colorState = GetIt.I<AppColorobs>();

    final basketState = GetIt.I<BasketState>();
    final loadingState = LoadingState();
    return Material(
      child: Column(
        children: [
          HeaderContent(isDashboard: true),
          Observer(
            builder: (context) => Expanded(
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(48),
                    decoration: BoxDecoration(
                      color: AppColors.appWhite,
                      boxShadow: boxShadow,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: router.pop,
                          child: CustomIcons.managermenu,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    //height: 500,
                    alignment: Alignment.topCenter,
                    child: FittedBox(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 80, vertical: 70),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'shift'.tr(namedArgs: {
                                'number': (authState.info?.n_smena).toString()
                              }),
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2!
                                  .copyWith(color: AppColors.appBlack),
                            ),
                            const SizedBox(height: 30),
                            CustomButton(
                              onTap: () async {
                                //router.pop(true);
                    
                                try {
                                  final res = await basketState.closeSmena(
                                      smenaId:
                                          (authState.info?.n_smena).toString());
                                  loadingState.startLoading();
                    
                                  if (res["status"] == "success") {
                                    await router.pushAndPopUntil(
                                      SplashRoute(),
                                      predicate: (route) => false,
                                    );
                                  }
                                } catch (e) {
                                  await UiUtils.errorModal(
                                      context: context, errorCode: "Error");
                                } finally {
                                  loadingState.stopLoading();
                                }
                    
                                //authState.logOut();
                                // final result = await ServicesRepository.getInfo();
                                // authState.info = result;
                              },
                              minimumSize: const Size(100, 60),
                              padding: const EdgeInsets.symmetric(
                                vertical: 18,
                                horizontal: 24,
                              ),
                              backgroundColor: AppColors.appRed,
                              child: Text(
                                'closingTheGeneralShift'.tr(),
                                style: Theme.of(context)
                                    .textTheme
                                    .headline3!
                                    .copyWith(color: AppColors.appWhite),
                              ),
                            ),
                            const SizedBox(height: 30),
                            Text(
                              'cashOperations'.tr(),
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2!
                                  .copyWith(color: AppColors.appBlack),
                            ),
                            const SizedBox(height: 30),
                            Row(
                              children: [
                                CustomButton(
                                  backgroundColor: colorState.isDark==false?
                                      AppColors.appLightGreen:AppColors.appLightPink,
                                  onTap: () async{
                                    await  showDashboardDialog(context: context, title: "reports".tr());
                                    //await  router.popAndPush(CashRoute());
                                    //await  router.popAndPush(CassRoute());
                                   //await  router.popAndPush(SalesRoute());
                                  },
                                  minimumSize: const Size(100, 60),
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 18,
                                    horizontal: 24,
                                  ),
                                  child: Text("reports".tr(),
                                      style: TextStyle(color: AppColors.appBlack)),
                                ),
                                const SizedBox(width: 30),
                                CustomButton(
                                  backgroundColor: colorState.isDark==false?
                                      AppColors.appLightGreen:AppColors.appLightPink,
                                  onTap: () async {
                                    try {
                                      AdminScreen.typeEditor = 1;
                                      final res =
                                          await ServicesRepository.getCloseSaved(
                                        waiter_name: authState.currentUser!.fio,
                                      );
                    
                                      await router.push(
                                        TablesRoute(
                                            orderPageType: OrderPageType.editOrder,
                                            editedOrders: res),
                                      );
                                    } catch (e) {
                                      UiUtils.errorModal(
                                          context: context, errorCode: "Error");
                                    }
                                  },
                                  minimumSize: const Size(100, 60),
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 18,
                                    horizontal: 24,
                                  ),
                                  child: Text(
                                    "closedChecks".tr(),
                                    style: TextStyle(color: AppColors.appBlack),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 30),
                            Text(
                              'financial'.tr(),
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2!
                                  .copyWith(color: AppColors.appBlack),
                            ),
                            const SizedBox(height: 30),
                            Row(
                              children: [
                                CustomButton(
                                  backgroundColor: colorState.isDark==false?
                                      AppColors.appLightGreen:AppColors.appLightPink,
                                  onTap: () {
                                    showInsertDialog(
                                        context: context, title: "introduction".tr());
                                  },
                                  minimumSize: const Size(100, 60),
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 18,
                                    horizontal: 24,
                                  ),
                                  child: Text("introduction".tr(),
                                      style: TextStyle(color: AppColors.appBlack)),
                                ),
                                const SizedBox(width: 30),
                                CustomButton(
                                  backgroundColor: colorState.isDark==false?
                                      AppColors.appLightGreen:AppColors.appLightPink,
                                  onTap: () {
                                    showIncasationDialog(
                                        context: context, title: "collection".tr());
                                  },
                                  minimumSize: const Size(100, 60),
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 18,
                                    horizontal: 24,
                                  ),
                                  child: Text("collection".tr(),
                                      style: TextStyle(color: AppColors.appBlack)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          FooterContent(isDashboard: true),
        ],
      ),
    );
  }
}
