import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../http/repositories/services_repository.dart';
import '../router.gr.dart';
import '../services.dart';
import '../store/basket_state/basket_state.dart';
import '../themes/app_colors.dart';
import '../widgets/custom_button.dart';
import 'widgets/modal_header.dart';

Future<bool?> showIncasationAnswer({
  required BuildContext context,
  required String title,
}) async {
  final colorState = GetIt.I<AppColorobs>();
  final basketState = GetIt.I<BasketState>();
  final res = await showDialog(
    context: context,
    builder: (BuildContext context) {
      return SimpleDialog(
        titlePadding: EdgeInsets.zero,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
        title: ModalHeader(title: ''),
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Text(title,style: TextStyle(color:AppColors.appBlack),textAlign: TextAlign.center,),
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(
                    onTap: () async {
                       
                       await router.pop(true);
                      } ,
                    padding: const EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 24,
                    ),
                    foregroundColor: AppColors.appWhite,
                    backgroundColor: colorState.isDark == false
                            ? AppColors.appRed
                            : AppColors.appDarkPink,
                    child: Text(
                      'Ok'.tr(),
                      style: TextStyle(color: AppColors.appWhite),
                    ),
                  ),
                  // const SizedBox(width: 24),
                  // CustomButton(
                  //   onTap: () => router.pop(false),
                  //   padding: const EdgeInsets.symmetric(
                  //     vertical: 12,
                  //     horizontal: 24,
                  //   ),
                  //   foregroundColor: AppColors.appWhite,
                  //   backgroundColor: colorState.isDark == false
                  //           ? AppColors.appRed
                  //           : AppColors.appDarkPink,
                  //   child: Text('no'.tr(),
                  //       style: TextStyle(color: AppColors.appWhite)),
                  // ),
                ],
              ),
            ],
          ),
        ],
      );
    },
  );
  return res;
}
