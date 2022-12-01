import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:pcassa/store/auth/auth_state.dart';

import '../../store/basket_state/basket_state.dart';
import '../../themes/app_colors.dart';
import '../custom_button.dart';

class BasketFooter extends StatelessWidget {
   BasketFooter({
    Key? key,
    this.onShowPaymentDrawer,
    this.isPaymentScreen = false,
  }) : super(key: key);

  final bool isPaymentScreen;
  final VoidCallback? onShowPaymentDrawer;
  final colorState = GetIt.I<AppColorobs>();
  final authState = GetIt.I<AuthState>();
  final basketState = GetIt.I<BasketState>();
  @override
  Widget build(BuildContext context) {
    //authState.dostupMap["pay"] = null;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: Observer(
            builder:(context)=> CustomButton(
              //onTap: () {},
              minimumSize: const Size(double.infinity, 100),
              backgroundColor: colorState.isDark==false?AppColors.appLightGreen:AppColors.appPink,
              overlayColor: Colors.transparent,
              child: FittedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'orderCost'.tr(),
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2!
                          .copyWith(color: colorState.isDark==false?AppColors.appBlack:AppColors.appDarkPink),
                    ),
                    Observer(
                      builder: (_) => Text(
                        //0.toStringAsFixed(1),
                       basketState.order!.orderinfo.saleprice.toDouble().toStringAsFixed(1),
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(color:  colorState.isDark==false?AppColors.appBlack:AppColors.appDarkPink),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 2),
        if (!isPaymentScreen)
          Expanded(
            child: Observer(
              builder: (_) => CustomButton(
                onTap: !GetIt.I<BasketState>().basketIsEmpty&&
                authState.dostupMap["pay"]==null
                    ? () {
                        if (onShowPaymentDrawer != null) {
                          onShowPaymentDrawer!();
                        }
                      }
                    : null,
                minimumSize: const Size(double.infinity, 100),
                backgroundColor: colorState.isDark==false?AppColors.appGreen:AppColors.appDarkPink,
                //overlayColor: Colors.transparent,
                child: FittedBox(
                  child: Text(
                    'pay'.tr(),
                    style: Theme.of(context)
                        .textTheme
                        .headline1!
                        .copyWith(fontSize: 48, color: AppColors.appWhite),
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
