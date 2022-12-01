import 'dart:convert';

import 'package:easy_localization/easy_localization.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:pcassa/http/repositories/services_repository.dart';
import 'package:pcassa/models/order_info_model/order_info_model.dart';
import 'package:pcassa/models/order_model/order_model.dart';
import 'package:pcassa/models/savedorder_model/savedorder_model.dart';
import 'package:pcassa/popups/discount_modal.dart';
import 'package:pcassa/screens/admin_screen/admin_screen.dart';
import '../../constants/order_page_types.dart';
import '../../router.gr.dart';
import '../../services.dart';
import '../../store/auth/auth_state.dart';
import '../../store/basket_state/basket_state.dart';
import '../../store/loading/loading_state.dart';
import '../../store/payment_state/payment_state.dart';
import '../../store/services_state/services_state.dart';
import '../../store/stop_list_state/stoplist.dart';
import '../../store/tables_state/tables_state.dart';
import '../../themes/app_colors.dart';
import '../../utils/error_handler.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/footer_content.dart';
import '../../widgets/header_content.dart';
import '../../widgets/loading_widget.dart';
import 'widgets/admin_panel.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final loadingState = LoadingState();
  final servicesState = GetIt.I<ServicesState>();
  final tablesState = GetIt.I<TablesState>();
  final basketState = GetIt.I<BasketState>();
  final paymentState = GetIt.I<PaymentState>();
  final authState = GetIt.I<AuthState>();
  final colorState = GetIt.I<AppColorobs>();
  final stopListState = GetIt.I<StopListState>();
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
      //await servicesState.getMenu();
      HeaderContent.defaultLangNum = HeaderContent.languageCode[authState.language];
      EasyLocalization.of(context)!.setLocale(HeaderContent.langeList[HeaderContent.defaultLangNum as int]);
      await servicesState.getDiscount();
      await paymentState.getCurrencies();
      //stopListState.searchStopList = await ServicesRepository.getStopModel();
      stopListState.stopList = stopListState.searchStopList;
      //print(authState.dostupMap);
      ///match first level categories
      for (var i = 0; i < servicesState.categories.length; i++) {
        if (servicesState.categories[i].isroot == 0) {
          servicesState.categoriesFirstLevel.add(servicesState.categories[i]);
        }
      }

      if (tablesState.tableGroups.isNotEmpty) {
        tablesState.selectedTableGroupId = tablesState.tableGroups.first.id;
      }

      if (servicesState.categories.isNotEmpty) {
        servicesState
          ..selectedMainCategoryId = servicesState.categories.first.guid
          ..onFilterCategory(servicesState.categories.first);
      }
    } catch (e) {
      await UiUtils.errorModal(
        context: context,
        errorCode: 'errors.any',
      );
    } finally {
      loadingState.stopLoading();
    }
  }

//GetSavedORders
  Future<void> submitData() async {
    try {
      final res = await ServicesRepository.getSaved(
      waiter_name: authState.currentUser!.fio,
    );basketState.listOfOrders = await ServicesRepository.getSaved(
      waiter_name: authState.currentUser!.fio,
    );
    AdminScreen.typeEditor = 0;

    await router.popAndPush(
      TablesRoute(orderPageType: OrderPageType.editOrder, editedOrders: res),
    );
    } catch (e) {
     UiUtils.errorModal(context: context, errorCode: "error") ;
    }
    
  }

  Future<void> onCreateOrder() async {
    try {
      loadingState.startLoading();
      final createdOrder = OrderModel(
        orderinfo: OrderInfoModel(
          cashid: 1,
          paidamount: 0,
          paidamountcard: 0,
          deptamount: 0,
          waiter_name: authState.currentUser?.fio ?? '',
        ),
      );
      final order = await basketState.createOrder(createdOrder: createdOrder);
      basketState.listOfOrders = await ServicesRepository.getSaved(
      waiter_name: authState.currentUser!.fio,
    );
      //print(1);
      await router.popAndPush(
        OrderRoute(
          order: order,
          orderPageType: OrderPageType.quickOrder,
          basket: [],
        ),
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

  @override
  Widget build(BuildContext context) {
    final colorState2 = GetIt.I<AppColorobs>();
    //print(HeaderContent.isPuprle);
    return Stack(
      children: [
        Material(
          child: Column(
            children: [
              HeaderContent(isDashboard: true),
              Observer(
                builder:(context) =>  Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: OrderPageType.values.sublist(0,2)
                                .map(
                                  (orderType) => Padding(
                                    padding: const EdgeInsets.only(bottom: 24),
                                    child: CustomButton(
                                      onTap: () {
                                        onTap(orderType: orderType);
                                      },
                                      minimumSize: const Size(400, 130),
                                      backgroundColor:colorState.isDark==false?AppColors.appGreen:AppColors.appDarkPink,
                                      //
                                      child: Text(orderType.title.tr(),
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline1!
                                              .copyWith(
                                                  color: AppColors.appWhite)),
                                    ),
                                  ),
                                )
                                .toList(),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                            padding: EdgeInsets.only(right: 50),
                            // ignore: unrelated_type_equality_checks
                            child: colorState2.isDark ==false? Image(
                                  image: AssetImage('assets/images/logo.png')):
                                  Image(
                                  image: AssetImage('assets/images/log.png'))
                            // child: ExtendedImage.network(
                            //   GetIt.I<AuthState>().info!.logo,
                            // ),
                            ),
                      ),
                      if (true) AdminPanel()
                    ],
                  ),
                ),
              ),
              FooterContent(isDashboard: true),
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

  Future<void> onTap({
    required OrderPageType orderType,
  }) async {
    if (orderType == OrderPageType.quickOrder) {
      print(2);
      await onCreateOrder();
    } 
    else if (orderType == OrderPageType.createOrder) {
      //print(3);
      await router.push(
        TablesRoute(
          orderPageType: orderType,
          editedOrders: const [],
        ),
      );
    } 
    else if (orderType == OrderPageType.editOrder) {
      //print(4);
      await submitData();
    }
  }
}
