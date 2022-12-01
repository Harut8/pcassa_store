import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../themes/app_colors.dart';
import '../widgets/custom_button.dart';
import 'widgets/modal_header.dart';

Future<void> onShowReportsModal({
  required BuildContext context,
  required String title,
}) async {
  await showDialog(
    context: context,
    builder: (BuildContext context) {
      var colorState = GetIt.I<AppColorobs>();
      return SimpleDialog(
        titlePadding: EdgeInsets.zero,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
        title: ModalHeader(title: title),
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: Observer(
                builder:(context) =>  Column(
                  children: [
                    CustomButton(
                      onTap: () {},
                      backgroundColor: colorState.isDark == false?AppColors.appLightGreen:AppColors.appLightPink,
                      minimumSize: const Size(380, 100),
                      child: Text('totalRevenues'.tr(),style: TextStyle(
                        color:colorState.isDark == false?AppColors.appBlack:AppColors.appWhite
                      )),
                    ),
                    const SizedBox(height: 12),
                    CustomButton(
                      onTap: () {},
                      backgroundColor: colorState.isDark == false?AppColors.appLightGreen:AppColors.appLightPink,
                      minimumSize: const Size(380, 100),
                      child: Text('consumptionMeals'.tr(),style: TextStyle(
                        color:colorState.isDark == false?AppColors.appBlack:AppColors.appWhite
                      )),
                    ),
                    const SizedBox(height: 12),
                    CustomButton(
                      onTap: () {},
                      backgroundColor: colorState.isDark == false?AppColors.appLightGreen:AppColors.appLightPink,
                      minimumSize: const Size(380, 100),
                      child: Text('collectionApplication'.tr(),style: TextStyle(
                        color:colorState.isDark == false?AppColors.appBlack:AppColors.appWhite
                      ),),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      );
    },
  );
}
