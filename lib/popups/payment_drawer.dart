import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:lottie/lottie.dart';
import 'package:pcassa/store/basket_state/basket_state.dart';
import 'package:pcassa/store/loading/loading_state.dart';

import '../constants/assets.dart';
import '../constants/order_page_types.dart';
import '../http/repositories/services_repository.dart';
import '../models/order_info_model/order_info_model.dart';
import '../models/order_model/order_model.dart';
import '../router.gr.dart';
import '../services.dart';
import '../store/auth/auth_state.dart';
import '../store/payment_state/payment_state.dart';
import '../themes/app_colors.dart';
import '../utils/error_handler.dart';
import '../widgets/custom_button.dart';
import '../widgets/pin_code_keyboard.dart';
import 'widgets/modal_header.dart';

class PaymentDrawer extends StatefulWidget {
  const PaymentDrawer({Key? key}) : super(key: key);

  @override
  State<PaymentDrawer> createState() => _PaymentDrawerState();
}

class _PaymentDrawerState extends State<PaymentDrawer>
    with TickerProviderStateMixin {
  final paymentState = GetIt.I<PaymentState>();
  final basketState = GetIt.I<BasketState>();
  final authState = GetIt.I<AuthState>();
  late final AnimationController animationController;

  @override
  void initState() {
    super.initState();
    paymentState.isPayed = null;
    final mySum = basketState.basketSum.toInt();
    paymentState.typedValue = mySum.toString();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    
   

  }

  @override
  void dispose() {
    animationController.dispose();
    paymentState
      ..isPayed = null
      ..typedValue = ''
      ..selectedCurrency = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final colorState = GetIt.I<AppColorobs>();
    return GestureDetector(
      onTap: () {
        //print("###########drawer");
      },
      child: SizedBox(
        width: width,
        child: Row(
          children: [
            Expanded(child: Container(color: Colors.transparent,)),
            Container(
              width: width*0.625,
              child: Drawer(
              //backgroundColor: Colors.transparent,
                child: Stack(
                  children: [
                    Column(
                      children: [
                        ModalHeader(
                        
                          width: width,
                          title: 'payment'.tr(),
                          hasBorder: false,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(24),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: SizedBox(
                                      height: height * 0.85,
                                      child: SingleChildScrollView(
                                        padding:
                                            const EdgeInsets.symmetric(horizontal: 24),
                                        child: Column(
                                          children: paymentState.currencies
                                              .map(
                                                (paymentMethod) => Padding(
                                                  padding:
                                                      const EdgeInsets.only(bottom: 8),
                                                  child: Observer(
                                                    builder: (_) => CustomButton(
                                                      onTap: () {
                                                        paymentState.selectedCurrency =
                                                            paymentMethod;
                                                      },
                                                      backgroundColor: paymentState
                                                                  .selectedCurrency
                                                                  ?.cod ==
                                                              paymentMethod.cod
                                                          ? AppColors.appRed
                                                          : colorState.isDark == false? AppColors.appGreen:AppColors.appDarkPink,
                                                      foregroundColor: paymentState
                                                                  .selectedCurrency
                                                                  ?.cod ==
                                                              paymentMethod.cod
                                                          ? AppColors.appGreen
                                                          : AppColors.appBlack,
                                                      minimumSize:
                                                          Size(300, height * 0.15),
                                                      child: Text(
                                                        paymentMethod.name,
                                                        // ignore: prefer_const_constructors
                                                        style: TextStyle(
                                                            color: AppColors.appWhite),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              )
                                              .toList(),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Expanded(
                                    flex: 2,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: colorState.isDark == false? AppColors.appGreen:AppColors.appLightPink,
                                            borderRadius: BorderRadius.circular(4),
                                          ),
                                          padding: const EdgeInsets.all(24),
                                          child: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text('cost'.tr(),
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .headline3!
                                                          .copyWith(
                                                              color:
                                                                  AppColors.appWhite)),
                                                  Observer(
                                                    builder: (_) => Text(
                                                            basketState.basketSum
                                                            .toStringAsFixed(1),
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .headline1!
                                                            .copyWith(
                                                                color: AppColors
                                                                    .appWhite)),
                                                  ),
                                                ],
                                              ),
                                              const Divider(),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text('contributed'.tr(),
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .headline3!
                                                          .copyWith(
                                                              color:
                                                                  AppColors.appWhite)),
                                                  Observer(
                                                    builder: (_) => GestureDetector(
                                                      onTap: () {
                                                        paymentState.typedValue = '';
                                                      },
                                                      child: Text(
                                                          paymentState.typedValue
                                                                      .trim() !=
                                                                  ''
                                                              ? double.parse(paymentState
                                                                      .typedValue)
                                                                  .toStringAsFixed(1)
                                                              : '0.0',
                                                          style: Theme.of(context)
                                                              .textTheme
                                                              .headline1!
                                                              .copyWith(
                                                                  color: AppColors
                                                                      .appWhite)),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const Divider(),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text(
                                                    'surrender'.tr(),
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .headline3!.copyWith(
                                            color:AppColors.appWhite
                                          ),
                                                  ),
                                                  Observer(
                                                    builder: (_) => Text(
                                                      paymentState.getSurrender
                                                          .toStringAsFixed(1),
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .headline1!
                                                          .copyWith(
                                                              color: paymentState
                                                                      .getSurrender
                                                                      .isNegative
                                                                  ? AppColors.appWhite
                                                                  : AppColors.appWhite),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 24),
                                        SizedBox(
                                          width: width * 0.3,
                                          height: height * 0.5,
                                          child: Observer(
                                            builder: (_) => PinCodeKeyboard(
                                              onTap: onTap,
                                              isActiveDone: !paymentState
                                                      .getSurrender.isNegative &&
                                                  paymentState.selectedCurrency != null,
                                              padding: EdgeInsets.zero,
                                              childAspectRatio: 40 / 20,
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
                      ],
                    ),
                    Observer(
                      builder: (_) => paymentState.isPayed != null
                          ? Container(
                              width: double.infinity,
                              height: double.infinity,
                              color: AppColors.appGreen.withOpacity(0.3),
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Lottie.asset(
                                    paymentState.isPayed == true
                                        ? Assets.checkMark
                                        : Assets.error,
                                    controller: animationController,
                                    width: 240,
                                  ),
                                ],
                              ),
                            )
                          : const SizedBox(),
                    ),
                    Observer(
                      builder: (_) => paymentState.paymentLoading.isLoading
                          ? IgnorePointer(
                            ignoring: true,
                            child: Container(
                                width: double.infinity,
                                height: double.infinity,
                                color: AppColors.appGreen.withOpacity(0.3),
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(24),
                                      decoration: BoxDecoration(
                                        //color: AppColors.appWhite,
                                        borderRadius: BorderRadius.circular(24),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            'surrender'.tr(),
                                            style: Theme.of(context).textTheme.headline2!.copyWith(
                                              color: colorState.isDark == false? AppColors.appBlack:AppColors.appWhite
                                            ),
                                          ),
                                          Observer(
                                            builder: (_) => Text(
                                              paymentState.getSurrender
                                                  .toStringAsFixed(1),
                                              style:
                                                  Theme.of(context).textTheme.headline2,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Lottie.asset(
                                      Assets.printingAnimation,
                                      width: 240,
                                    ),
                                  ],
                                ),
                              ),
                          )
                          : const SizedBox(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  onTap(String value) async{
    switch (value) {
      case 'Clear':
        paymentState.typedValue = '';
        break;
      case 'done':
        await confirmPayment();
        break;
      default:
        {
          paymentState.typedValue = paymentState.typedValue + value;
        }
    }
  }

  Future<void> confirmPayment() async {
    try {
      paymentState.isPayed = null;
      paymentState.paymentLoading.startLoading();
      await Future.delayed(const Duration(seconds: 2));
      await paymentState.paymentOrder();
      paymentState.paymentLoading.stopLoading();
      paymentState.isPayed = true;
      animationController.duration = const Duration(seconds: 2);
      await animationController.forward().whenComplete(() async {
        if (paymentState.isPayed == true) {
          paymentState.basketState.basket.clear();
          paymentState.basketState.selectedBasketItem = null;
          await onCreateOrder(context:context );
          //router.popAndPush(DashboardRoute());
        }
      });
    } catch (e) {
      paymentState.isPayed = false;
        if(mounted){
          animationController
        ..duration = const Duration(seconds: 2);
        animationController.forward();
        await UiUtils.errorModal(
        context: context,
        errorCode: 'errors.any',);
        }
      
    } finally {
      //animationController.dispose();
      paymentState.paymentLoading.stopLoading();
    }
  }
   Future<void> onCreateOrder({required context}) async {
    var loadingState = LoadingState();
    try {
      
      basketState.basket.clear();
      basketState.selectedBasketItem = null;
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
      //await basketState.OnSaved();
      final order = await basketState.createOrder(createdOrder: createdOrder);
      basketState.listOfOrders = await ServicesRepository.getSaved(
      waiter_name: authState.currentUser!.fio,
    );
      await router.push(
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
}
