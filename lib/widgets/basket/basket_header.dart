import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../../constants/custom_icons.dart';
import '../../models/order_model/order_model.dart';
import '../../themes/app_colors.dart';

class BasketHeader extends StatelessWidget {
  BasketHeader({
    Key? key,
    required this.order,
  }) : super(key: key);

  final OrderModel order;
  final colorState = GetIt.I<AppColorobs>();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context)=> Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color:  colorState.isDark==false?AppColors.appLightGreen:AppColors.appPink,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FittedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      DateFormat('yyyy-MM-dd HH:mm:ss').format(
                        order.orderinfo.created_at ?? DateTime.now(),
                      ),
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(color:AppColors.appBlack)),
                  Text(
                      'orderId'.tr(
                        namedArgs: {'number': order.orderinfo.orderid},
                      ),
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(color: AppColors.appBlack))
                ],
              ),
            ),
            FittedBox(
              child: Column(
                children: [
                  Row(
                    children: [
                      CustomIcons.user,
                      const SizedBox(width: 12),
                      Text(order.orderinfo.waiter_name ?? '',
                          style: Theme.of(context)
                              .textTheme
                              .caption!
                              .copyWith(color: AppColors.appBlack)),
                    ],
                  ),
                ]
              ),
            ),
            // if (order.orderinfo.table_name != '0')
            //       Row(
            //         children: [
            //           CustomIcons.table,
            //           const SizedBox(width: 12),
            //           Text(
            //             '${order.orderinfo.table_name}',
            //             style: Theme.of(context)
            //                 .textTheme
            //                 .caption!
            //                 .copyWith(color:  colorState.isDark==false?AppColors.appBlack:AppColors.appWhite, fontSize: 25),
            //           ),
            //         ],
            //       )
                  
              ],
          
          
        ),
      ),
    );
  }
}
