import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:pcassa/screens/dashboard_screen/dashboard_screen.dart';
import 'package:pcassa/store/auth/auth_state.dart';

import '../../../constants/custom_icons.dart';
import '../../../constants/order_page_types.dart';
import '../../../http/repositories/services_repository.dart';
import '../../../models/basket_item_model/basket_item_model.dart';
import '../../../models/order_info_model/order_info_model.dart';
import '../../../models/order_model/order_model.dart';
import '../../../popups/answer_dialog.dart';
//import '../../../popups/stoplist_modal.dart';
import '../../../popups/stoplist_modal_new.dart';
import '../../../popups/top_products_modal.dart';
import '../../../router.gr.dart';
import '../../../services.dart';
import '../../../store/basket_state/basket_state.dart';
import '../../../themes/app_colors.dart';
import '../../../utils/error_handler.dart';
import '../../../widgets/custom_button.dart';
import '../../admin_screen/admin_screen.dart';

class OrderAppBar extends StatelessWidget {
  OrderAppBar({
    Key? key,
    required this.orderPageType,
  }) : super(key: key);

  final OrderPageType orderPageType;
  final colorState = GetIt.I<AppColorobs>();
  final basketState = GetIt.I<BasketState>();
  final authState = GetIt.I<AuthState>();

  @override
  Widget build(BuildContext context) {
    var lngh = basketState.listOfOrders.length;
    return Observer(
      builder: (context) => Container(
        constraints: BoxConstraints(minWidth: 800),
        decoration: BoxDecoration(
          color: colorState.isDark == false
              ? AppColors.appGreen
              : AppColors.appDarkPink,
          borderRadius: BorderRadius.circular(4),
        ),
        margin: const EdgeInsets.all(2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CustomButton(
                  onTap: () {
                    try {
                      onBack(context: context);
                    } catch (e) {
                      UiUtils.errorModal(context: context, errorCode: "Error");
                    }
                    
                  },
                  minimumSize: const Size(100, 60),
                  backgroundColor: colorState.isDark == false
                      ? AppColors.appGreen
                      : AppColors.appDarkPink,
                  padding: const EdgeInsets.all(24),
                  child: CustomIcons.back,
                ),
                Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      //right: BorderSide(width: 2, color: Colors.white),
                      left: BorderSide(width: 2, color: Colors.white),
                    ),
                  ),
                  height: 70,
                  width: 450,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: basketState.listOfOrders.length != 0
                        ? Expanded(
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: lngh - 9 < 0 ? lngh : 9,
                              itemBuilder: ((context, index) {
                                return FittedBox(
                                  child: Container(
                                    margin: const EdgeInsets.only(left: 20.0),
                                    child: Column(
                                      children: [
                                        FittedBox(
                                          child: InkWell(
                                            onTap: () async {
                                              try {
                                                await openSavedOrders(
                                                    orderid:
                                                        "${basketState.listOfOrders.sublist(lngh - 9 < 0 ? 0 : lngh - 9)[index].orderid}",
                                                    context: context);
                                              } catch (e) {
                                                UiUtils.errorModal(
                                                    context: context,
                                                    errorCode: "Error");
                                              }
                                            },
                                            child: CustomIcons.check,
                                          ),
                                        ),
                                        Text(
                                          basketState.listOfOrders
                                              .sublist(lngh - 9 < 0
                                                  ? 0
                                                  : lngh - 9)[index]
                                              .orderid
                                              .toString(),
                                          style: TextStyle(
                                              color: AppColors.appWhite),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              })),
                        )
                        : SizedBox(),
                  ),
                ),
                // Container(
                //   decoration: const BoxDecoration(
                //     border: Border(
                //       left: BorderSide(width: 2, color: Colors.white),
                //       right: BorderSide(width: 2, color: Colors.white),
                //     ),
                //   ),
                //   child: CustomButton(
                //     onTap: () {
                //       onShowTopProductsModal(context: context);
                //     },
                //     minimumSize: const Size(100, 60),
                //     backgroundColor: colorState.isDark == false?AppColors.appGreen:AppColors.appDarkPink,
                //     padding: const EdgeInsets.all(24),
                //     hasBorderRadius: false,
                //     child: CustomIcons.bests,
                //   ),
                // ),
              ],
            ),
            //checker------------------------
            Row(
              children: [
                FittedBox(
                  child: Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        right: BorderSide(width: 2, color: Colors.white),
                        left: BorderSide(width: 2, color: Colors.white),
                      ),
                    ),
                    child: CustomButton(
                      onTap: () {
                        //translate
                
                        //showStopListDialog(context: context,title: 'stoplist');
                      },
                      minimumSize: const Size(80, 60),
                      backgroundColor: colorState.isDark == false
                          ? AppColors.appGreen
                          : AppColors.appDarkPink,
                      padding: const EdgeInsets.all(24),
                      hasBorderRadius: false,
                      child: CustomIcons.stop,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: FittedBox(
                    child: Text(orderPageType.title.tr(),
                        style: Theme.of(context)
                            .textTheme
                            .headline3!
                            .copyWith(color: AppColors.appWhite)),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Future<void> openSavedOrders(
      {required String orderid, required context}) async {
    //if(typeEditor == 1){}
    try {
      final res = await ServicesRepository.openCloseSaved(orderid: orderid);
      //print(res);
      //router.popUntil((route) => false);
      var info = OrderRoute(
          orderPageType: OrderPageType.editOrder,
          order: OrderModel(
              orderinfo: OrderInfoModel(
                orderid: res.orderinfo.orderid,
                deptamount: res.orderinfo.deptamount,
                paidamount: res.orderinfo.paidamount,
                paidamountcard: res.orderinfo.paidamountcard,
                saleprice: res.orderinfo.saleprice,
                waiter_name: authState.currentUser!.fio,
                cashid: 1,
                created_at: res.orderinfo.created_at,
              ),
              basket: <BasketItemModel>[
                for (int i = 0; i < res.basket.length; i++)
                  BasketItemModel(
                    id: res.basket[i].id,
                    deletepersonid: res.basket[i].deletepersonid,
                    realprice: res.basket[i].realprice,
                    recorddate: res.basket[i].recorddate,
                    edizm: res.basket[i].edizm,
                    kname: res.basket[i].kname,
                    quantity: res.basket[i].quantity,
                    code: res.basket[i].code,
                    name: res.basket[i].name,
                    saleprice: res.basket[i].saleprice,
                  )
              ]),
          basket: res.basket);
      basketState.selectedBasketItem = res.basket.length>0? res.basket.last:null;
      await router.push(info);
    } catch (e) {
      UiUtils.errorModal(context: context, errorCode: "Error");
    }
  }

  Future<void> onBack({
    required BuildContext context,
  }) async {
    final basketState = GetIt.I<BasketState>();

    if (basketState.basketIsEmpty) {
      final res = await showAnswerDialog(
        context: context,
        title: 'doYouWantToExitOrderWillBeDeleted'.tr(),
      );
      if (res == true) {
        basketState.basket.clear();
        basketState.selectedBasketItem = null;
        await ServicesRepository.orderDelete(orderId:basketState.order!.orderinfo.orderid);
        //basketState.delete
        ///delete order for back end site
        //print(1);
        await router.pushAndPopUntil(
          const DashboardRoute(),
          predicate: (_) => false,
        );
      }
    } else {
      //print("hela");
      basketState.basket.clear();
      basketState.selectedBasketItem = null;
      await await router.pushAndPopUntil(
          const DashboardRoute(),
          predicate: (_) => false,
        );
    }
  }
}
