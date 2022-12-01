// ignore_for_file: cascade_invocations

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:pcassa/models/basket_item_model/basket_item_model.dart';
import 'package:pcassa/store/auth/auth_state.dart';

import '../../constants/order_page_types.dart';
import '../../models/order_model/order_model.dart';
import '../../popups/payment_drawer.dart';
import '../../store/basket_state/basket_state.dart';
import '../../store/loading/loading_state.dart';
import '../../widgets/basket/basket_widget.dart';
import '../../widgets/header_content.dart';
import '../../widgets/loading_widget.dart';
import 'widgets/order_app_bar.dart';
import 'widgets/order_center_content.dart';
import 'widgets/right_part.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({
    Key? key,
    required this.order,
    required this.orderPageType,
    required this.basket,
  }) : super(key: key);

  final OrderPageType orderPageType;
  final OrderModel order;
  final List<BasketItemModel> basket;

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  final loadingState = LoadingState();
  final basketState = GetIt.I<BasketState>();
  final GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    basketState.order = widget.order;
    basketState.basket = widget.basket;
  }

  @override
  void dispose() {
    basketState.order = null;
    basketState.basket.clear();
    
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        if(opener){
MenuPart.focusNode.requestFocus();
        }
        
      }),
      child: Scaffold(
        key: _scaffoldState,
        endDrawerEnableOpenDragGesture: false,
        //endDrawerEdgeDragWidth: 0,
        onEndDrawerChanged: (isOpened) {
          
        },
        //endDrawerEnableOpenDragGesture: false,
        endDrawer:const PaymentDrawer(),
    //         toggleDrawer() async {
    //   if (_scaffoldKey.currentState.isDrawerOpen) {
    //     _scaffoldKey.currentState.openDrawer();
    //   } else {
    //     _scaffoldKey.currentState.openEndDrawer();
    //   }
    // }
        //drawerEnableOpenDragGesture: false,
        body: Stack(
          children: [
            Material(
              child: Column(
                children: [
                  HeaderContent(isDashboard: true),
                  OrderAppBar(orderPageType: widget.orderPageType),
                  Expanded(
                    child: Row(
                      children: [
                        const SizedBox(width: 2),
                        Expanded(
                          flex: 3,
                          child: BasketWidget(
                            onShowPaymentDrawer: () {
                              _scaffoldState.currentState?.openEndDrawer();
                            },
                          ),
                        ),
                        const SizedBox(width: 2),
                        const Expanded(
                          flex: 1,
                          child: OrderCenterContent(),
                        ),
                        const SizedBox(width: 2),
                        const Expanded(flex: 3, child: MenuPart()),
                        const SizedBox(width: 2),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Observer(
              builder: (_) => loadingState.isLoading
                  ? const LoadingWidget()
                  : const SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}
