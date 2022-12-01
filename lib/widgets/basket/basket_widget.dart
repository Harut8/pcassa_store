import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:pcassa/store/auth/auth_state.dart';

import '../../store/basket_state/basket_state.dart';
import '../../store/services_state/services_state.dart';
import 'basket_footer.dart';
import 'basket_header.dart';
import 'basket_item.dart';

class BasketWidget extends StatefulWidget {
  const BasketWidget({
    Key? key,
    this.onShowPaymentDrawer,
    this.isPaymentScreen = false,
  }) : super(key: key);

  final bool isPaymentScreen;
  final VoidCallback? onShowPaymentDrawer;

  @override
  State<BasketWidget> createState() => _BasketWidgetState();
}

class _BasketWidgetState extends State<BasketWidget> {
  final servicesState = GetIt.I<ServicesState>();
  final basketState = GetIt.I<BasketState>();
  final scrollController = ScrollController();

  @override
  void dispose() {
    super.dispose();
    scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    
    return Column(
      children: [
        Expanded(
          child: BasketHeader(
            order: basketState.order!,
          ),
        ),
        const SizedBox(height: 2),
        Expanded(
          flex: 5,
          child: SingleChildScrollView(
            controller: scrollController,
            padding: const EdgeInsets.symmetric(vertical: 7),
            child: Observer(
              builder: (_) => Column(
                children: 
                basketState.order!.basket
                    .map(
                      (item) => BasketItem(
                        item: item,
                        onTap: () {
                          basketState.selectedBasketItem = item;
                        },
                        isSelected:
                            basketState.selectedBasketItem?.code == item.code,
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ),
        const SizedBox(height: 2),
        Expanded(
          flex: 2,
          child: Observer(
            builder:(context)=> BasketFooter(
              isPaymentScreen: widget.isPaymentScreen,
              onShowPaymentDrawer: widget.onShowPaymentDrawer,
            ),
          ),
        ),
        const SizedBox(height: 2),
      ],
    );
  }
}
