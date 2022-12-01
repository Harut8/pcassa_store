import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import '../../popups/widgets/modal_header.dart';
import '../../router.gr.dart';
import '../../services.dart';
import '../../themes/app_colors.dart';
import '../../widgets/custom_button.dart';

//create model with freezed


Future<bool?> showDashboardDialog({
  required BuildContext context,
  required String title,
}) async {
  final colorState = GetIt.I<AppColorobs>();
  //final basketState = GetIt.I<BasketState>();
  final res = await showDialog(
    context: context,
    builder: (BuildContext context) {
      return SimpleDialog(
        titlePadding: EdgeInsets.zero,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
        title: ModalHeader(title: "reports".tr()),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 200,
                child: CustomButton(
                                  backgroundColor: colorState.isDark==false?
                                  AppColors.appLightGreen:AppColors.appLightPink,
                                  onTap: () async{
                                    await  router.push(CashRoute());
                                  },
                                  minimumSize: const Size(150, 60),
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 18,
                                    horizontal: 24,
                                  ),
                                  child: Text("totalRevenues".tr(),
                                      style: TextStyle(color: AppColors.appBlack),textAlign: TextAlign.center,),
                                ),
              ),
                              SizedBox(height: 10,),
                              SizedBox(
                                width: 200,
                                child: CustomButton(
                                  backgroundColor: colorState.isDark==false?
                                  AppColors.appLightGreen:AppColors.appLightPink,
                                  onTap: () async{
                                    await  router.push(CassRoute());
                                  },
                                  minimumSize: const Size(150, 60),
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 18,
                                    horizontal: 24,
                                  ),
                                  child: Text('cassbalance'.tr(),
                                      style: TextStyle(color: AppColors.appBlack),textAlign: TextAlign.center,),
                                ),
                              ),SizedBox(height: 10,),
                              SizedBox(
                                width: 200,
                                child: CustomButton(
                                  backgroundColor: colorState.isDark==false?
                                  AppColors.appLightGreen:AppColors.appLightPink,
                                  onTap: () async{
                                    await  router.push(SalesRoute());
                                  },
                                  minimumSize: const Size(150, 60),
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 18,
                                    horizontal: 24,
                                  ),
                                  child: Text("saleProduct".tr(),
                                      style: TextStyle(color: AppColors.appBlack),textAlign: TextAlign.center,),
                                ),
                              ),
            ],
          )
        ]
      );
    },
  );
  return res;
}
