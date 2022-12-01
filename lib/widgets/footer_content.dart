import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:pcassa/widgets/header_content.dart';
//import 'package:window_manager/window_manager.dart';

import '../constants/custom_icons.dart';
import '../popups/answer_dialog.dart';
import '../router.gr.dart';
import '../screens/order_screen/widgets/right_part.dart';
import '../services.dart';
import '../store/auth/auth_state.dart';
import '../store/services_state/services_state.dart';
import '../themes/app_colors.dart';
import "dart:async";
class FooterContent extends StatefulWidget {
  FooterContent({
    Key? key,
    this.isDashboard = false,
  }) : super(key: key);

  final bool isDashboard;

  @override
  State<FooterContent> createState() => _FooterContentState();
}

class _FooterContentState extends State<FooterContent> {
  
  @override
  Widget build(BuildContext context) {
    
    //print(GetIt.I<AuthState>().info!.prim);
    var colorState = GetIt.I<AppColorobs>();
    var size = MediaQuery.of(context).size;
    final authState = GetIt.I<AuthState>();
    // Timer.periodic(Duration(seconds: 5), (Timer t)  { 
    //     authState.time = DateTime.now();
        
    // });
    //EasyLocalization.of(context)?.setLocale(HeaderContent.langeList[HeaderContent.defaultLangNum]);
    return Observer(
      builder:(context) =>  Container(
        width:size.width ,
        color: AppColors.appGray,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                      widget.isDashboard
                          ? 'shiftNumber'.tr(namedArgs: {'number': authState.info!.n_smena.toString()})
                          : 'copyright'.tr(),
                      style: TextStyle(color: AppColors.appBlack)),
                  const SizedBox(width: 100),
                  Text(GetIt.I<AuthState>().info!.mail,
                      style: TextStyle(color: AppColors.appBlack)),
                  const SizedBox(width: 100),
                  Text(GetIt.I<AuthState>().info!.tel,
                      style: TextStyle(color: AppColors.appBlack)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // InkWell(
                  //   child: CustomIcons.minimize,
                   
                  // ),
                  SizedBox(width: 100),
                  if (widget.isDashboard)
                    InkWell(
                      child: CustomIcons.lock,
                      onTap: () async {
                        // await GetIt.I.unregister<AuthState>();
                        // GetIt.I.registerSingleton(AuthState());
                        GetIt.I<AuthState>().dostupMap = {
            "discount_product":null,
            "change_price":null,
            "surcharge":null,
            "pay":null,
            "delete_item":null
          };
          MenuPart.controller.clear();
                        await GetIt.I.unregister<ServicesState>();
                        GetIt.I.registerSingleton(ServicesState());
                        await router.pushAndPopUntil(
                          SignInRoute(),
                          predicate: (_) => false,
                        );
                      },
                    ),
                    //const SizedBox(width: 24),
                  // if (widget.isDashboard) 
                  // InkWell(
                  //   child: CustomIcons.out,
                  //   onTap: () async {
                  //     final res = await showAnswerDialog(
                  //       context: context,
                  //       title: 'doYouWantToExit'.tr(),
                  //     );
                      
                  //   },
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
