// ignore_for_file: cascade_invocations, prefer_const_literals_to_create_immutables, unnecessary_null_comparison, non_constant_identifier_names

import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:pcassa/models/basket_item_model/basket_item_model.dart';
import 'package:pcassa/models/savedorder_model/savedorder_model.dart';
import 'package:pcassa/screens/admin_screen/admin_screen.dart';
import 'package:pcassa/screens/dashboard_screen/widgets/admin_panel.dart';
import '../../constants/custom_icons.dart';
import '../../constants/order_page_types.dart';
import '../../http/repositories/services_repository.dart';
import '../../models/error/error_model.dart';
import '../../models/order_info_model/order_info_model.dart';
import '../../models/order_model/order_model.dart';
import '../../models/table_model/table_model.dart';
import '../../popups/guest_count.dart';
import '../../router.gr.dart';
import '../../services.dart';
import '../../store/auth/auth_state.dart';
import '../../store/basket_state/basket_state.dart';
import '../../store/loading/loading_state.dart';
import '../../store/tables_state/tables_state.dart';
import '../../themes/app_colors.dart';
import '../../utils/error_handler.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/header_content.dart';
import '../../widgets/loading_widget.dart';
import 'widgets/table_groups.dart';

class TablesScreen extends StatefulWidget {
  const TablesScreen({
    Key? key,
    required this.orderPageType,
    required this.editedOrders,
  }) : super(key: key);

  final OrderPageType orderPageType;
  final List<SavedOrderModel> editedOrders;
  @override
  State<TablesScreen> createState() => _TablesScreenState();
}

class _TablesScreenState extends State<TablesScreen> {
  _TablesScreenState();

  final loadingState = LoadingState();
  final tablesState = GetIt.I<TablesState>();
  final basketState = GetIt.I<BasketState>();
  final authState = GetIt.I<AuthState>();

  @override
  void initState() {
    super.initState();
    loadingState.startLoading();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => afterFirstLayout(context),
    );
  }

  Future<void> afterFirstLayout(BuildContext context) async {
    try {
      await tablesState.getTableGroups();
    } on DioError catch (e) {
      try {
        final error = ErrorModel.fromJson(e.response!.data);

        await UiUtils.errorModal(
          context: context,
          errorCode: error.errors,
        );
      } catch (e) {
        await UiUtils.errorModal(
          context: context,
          errorCode: 'errors.any',
        );
      }
    } finally {
      loadingState.stopLoading();
    }
  }

  final ScrollController _scrollController = ScrollController();
  final colorState = GetIt.I<AppColorobs>();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Material(
          child: Column(
            children: [
              HeaderContent(isDashboard: true),
              Expanded(
                child: Column(
                  children: [
                    Observer(
                      builder: (_) => loadingState.isLoading
                          ? const SizedBox()
                          : Container(
                              decoration: BoxDecoration(
                                color: colorState.isDark == false? AppColors.appGreen:AppColors.appDarkPink,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              margin: const EdgeInsets.all(2),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [Row(
                                    children: [CustomButton(
                                    onTap: router.pop,
                                    minimumSize: const Size(100, 60),
                                    backgroundColor: colorState.isDark == false? AppColors.appGreen:AppColors.appDarkPink,
                                    padding: const EdgeInsets.all(24),
                                    child: CustomIcons.back,
                                  ),CustomButton(
                                    onTap: ()async{
                                      await router.popAndPush(DashboardRoute());
                                    },
                                    minimumSize: const Size(100, 60),
                                    backgroundColor: colorState.isDark == false? AppColors.appGreen:AppColors.appDarkPink,
                                    padding: const EdgeInsets.all(24),
                                    child: CustomIcons.home,
                                  ),],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 24),
                                    child:AdminScreen.typeEditor==1? Text(
                                      "changeclosed".tr(),
                                      style:
                                          Theme.of(context).textTheme.headline3!.copyWith(color: AppColors.appWhite),
                                    ):Text(
                                      "changeopen".tr(),
                                      style:
                                          Theme.of(context).textTheme.headline3!.copyWith(color: AppColors.appWhite),
                                    ),
                                  )
                                ],
                              ),
                            ),
                    ),
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          
                          // ignore: prefer_const_constructors
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Observer(
                                builder:
                                    (_) =>
                                        loadingState.isLoading ||
                                                widget.orderPageType ==
                                                    OrderPageType.editOrder
                                            ? GridView.count(
                                                controller: _scrollController,
                                                crossAxisCount: 2,
                                                childAspectRatio: 3,
                                                mainAxisSpacing: 20.0,
                                                crossAxisSpacing: 20.0,
                                                children: [
                                                    for (int i = 0;
                                                        i <
                                                            widget.editedOrders
                                                                .length;
                                                        i++)
                                                      if (true)
                                                        Column(
                                                          children: [
                                                            InkWell(
                                                              onTap: ()async {
                                                                try {
                                                                  await openSavedOrders(
                                                                  orderid:
                                                                      "${widget.editedOrders[i].orderid}", typeEditor: AdminScreen.typeEditor
                                                                );
                                                                } catch (e) {
                                                                  UiUtils.errorModal(context: context, errorCode: "Error");
                                                                }
                                                                
                                                              },
                                                              child: Container(
                                                                child: Column(
                                                                  children: [
                                                                    Container(
                                                                      width: double
                                                                          .infinity,
                                                                      color: colorState.isDark == false? AppColors.appLightGreen:AppColors.appLightPink,
                                                                      child:
                                                                          Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Row(
                                                                            children: [
                                                                              CustomIcons.user,
                                                                              Text(
                                                                                ' ${widget.editedOrders[i].waiter_name}',
                                                                                style: TextStyle(color:AppColors.appBlack),
                                                                              )
                                                                            ],
                                                                          ),
                                                                          Padding(
                                                                            padding:
                                                                                const EdgeInsets.all(18),
                                                                            child: Text(
                                                                                DateFormat('yyyy-MM-dd HH:mm:ss').format(
                                                                                  widget.editedOrders[i].created_at ?? DateTime.now(),
                                                                                ),
                                                                                style: Theme.of(context).textTheme.caption!.copyWith(color: AppColors.appBlack)),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      height:
                                                                          90,
                                                                      decoration:
                                                                          const BoxDecoration(
                                                                        boxShadow: [
                                                                          BoxShadow(
                                                                            color:
                                                                                Colors.black12,
                                                                            blurRadius:
                                                                                5.0,
                                                                            spreadRadius:
                                                                                5,
                                                                            offset:
                                                                                Offset(
                                                                              0,
                                                                              5,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      child:
                                                                          Container(
                                                                        color:AppColors.appWhite,
                                                                        child:
                                                                            Padding(
                                                                          padding:
                                                                              const EdgeInsets.all(18),
                                                                          child:
                                                                              Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              Row(
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                
                                                                                  if (widget.editedOrders[i].table_name != 'null' && widget.editedOrders[i].table_name != '0')
                                                                                    Text('  ' + ' ${widget.editedOrders[i].table_name}',
                                                                                        // ignore: prefer_const_constructors
                                                                                        style: TextStyle(color: AppColors.appBlack))
                                                                                  else
                                                                                    Text(widget.editedOrders[i].orderid.toString()),
                                                                                ],
                                                                              ),
                                                                              Text('${widget.editedOrders[i].saleprice}',style:TextStyle(color:AppColors.appBlack),)
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    )
                                                                  ],
                                                                ),
                                                              ),
                                                            )
                                                          ],
                                                        )
                                                  ])
                                            : Wrap(
                                                spacing: 12,
                                                runSpacing: 12,
                                              ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Observer(
          builder: (_) =>
              loadingState.isLoading ? const LoadingWidget() : const SizedBox(),
        ),
      ],
    );
  }

  //OpenSavedORders
  Future<void> openSavedOrders({required String orderid, required int typeEditor}) async {
    //if(typeEditor == 1){}
    final res = await ServicesRepository.openCloseSaved(orderid: orderid);
    await router.popAndPush(
      OrderRoute(
          orderPageType: OrderPageType.createOrder,
          order: OrderModel(
              orderinfo: OrderInfoModel(
                orderid: orderid,
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
          basket: res.basket
          ),
    );
  }

  Future<void> onTabTable({
    required TableModel table,
    final bool status = false,
  }) async {
    var guestsCount = 1;
    final res = await onShowGuestCountModal(
      context: context,
      table: table,
      title: 'numberOfGuests'.tr(),
    );
    if (res != null) {
      guestsCount = int.parse(res);
      await onCreateOrder(
        guestsCount: guestsCount,
        table: table,
      );
    }
  }

  Future<void> onCreateOrder({
    required int guestsCount,
    required TableModel table,
  }) async {
    try {
      loadingState.startLoading();
      final order = OrderModel(
        orderinfo: OrderInfoModel(
          //k_g: guestsCount,
          waiter_name: authState.currentUser!.fio,
          cashid: 1,
          //table_name: table.n_t,
        ),
      );
      final createdOrder = await basketState.createOrder(
        createdOrder: order,
      );
      await router.popAndPush(
        OrderRoute(
            orderPageType: OrderPageType.createOrder,
            order: createdOrder,
            basket: []),
      );
    } catch (e) {
      await UiUtils.errorModal(
        context: context,
        errorCode: 'errors.any',
      );
    } finally {
      loadingState.stopLoading();
    }
  }

  void whenTableIsBusy() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text(
            'tableIsBusy'.tr(),
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColors.appRed),
            textAlign: TextAlign.center,
          ),
          children: [
            TextButton(
              onPressed: router.pop,
              child: Text(
                'done'.tr(),
              ),
            ),
          ],
        );
      },
    );
  }
}
