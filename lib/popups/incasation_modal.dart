import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:pcassa/http/repositories/services_repository.dart';
import 'package:pcassa/models/cashentryexit_model/cashentryexit_model.dart';
import 'package:pcassa/popups/discount_modal.dart';
import 'package:pcassa/popups/incasation_answ.dart';
import 'package:pcassa/store/auth/auth_state.dart';
import 'package:pcassa/utils/error_handler.dart';
import 'package:pcassa/widgets/pin_code_keyboard_2.dart';

import '../store/basket_state/basket_state.dart';
import '../store/search_state/search_state.dart';
import '../store/services_state/services_state.dart';
import '../themes/app_colors.dart';
import '../widgets/custom_button.dart';
import '../widgets/pin_code_keyboard.dart';
import 'widgets/modal_header.dart';

Future<void> showIncasationDialog({
  required BuildContext context,
  required String title,
}) async {
  final servicesState = GetIt.I<ServicesState>();
  final basketState = GetIt.I<BasketState>();
  final authState = GetIt.I<AuthState>();
  final searchState = SearchState();
  final focusNode = FocusNode();
  final reg = RegExp(r'^\d+$');
  final controller = TextEditingController();
  final controllerPin = TextEditingController();
  
  searchState
    ..products = servicesState.products
    ..searchProducts = servicesState.products;
  final width = MediaQuery.of(context).size.width;
  final height = MediaQuery.of(context).size.height;
  var colorState = GetIt.I<AppColorobs>();
  //final basketState = GetIt.I<BasketState>();
  onTap(String value) async {
    switch (value) {
      case 'Clear':
        controllerPin.clear();
        focusNode.requestFocus();
        break;
      case 'done':
        //print("done");
        focusNode.requestFocus();
        if (controller.text.length != 0 && reg.hasMatch(controllerPin.text) ){
          try {
            basketState.addIncasation(
          model: CashentryexitModel(
            n_smena: (authState.info?.n_smena).toString() , 
            amount: double.parse(controllerPin.text) , 
            description: controller.text, 
            tip: 0));
            await showIncasationAnswer(context: context, title: "success".tr());
            controllerPin.clear();
            controller.clear();
          } catch (e) {
            UiUtils.errorModal(context: context, errorCode: "error");
          }
           
        }
       
        break;
      default:
        {
          controllerPin.text = controllerPin.text + value;
          focusNode.requestFocus();
        }
    }
  }

  await showGeneralDialog(
    barrierLabel: '',
    barrierDismissible: true,
    context: context,
    transitionBuilder: (context, anim1, anim2, child) {
      return SlideTransition(
        position: Tween(begin: const Offset(1, 0), end: const Offset(0, 0))
            .animate(anim1),
        child: child,
      );
    },
    pageBuilder: (context, anim1, anim2) {
      return AlertDialog(
          titlePadding: EdgeInsets.zero,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
          ),
          contentPadding: const EdgeInsets.all(12),
          title: ModalHeader(title: 'collection'.tr()),
          content: Container(
              width: width,
              height: height*0.6,
              child: Row(
                children: [
                  Expanded(
                      flex: 3,
                      child: Container(
                        child: SizedBox(
                          width: width * 0.3,
                          child: Column(
                            children: [
                              TextField(
                                minLines: 1,
                                maxLines: 5,
                                //onChanged: searchState.onSearch,
                                controller: controller,
                                decoration: InputDecoration(
                                    suffixIcon: Icon(Icons.keyboard),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2,
                                          color:colorState.isDark==false? AppColors.appLightGreen: 
                                          AppColors.appLightPink),
                                    ),
                                    hintText: "collectioncause".tr(),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2, color: AppColors.appRed),
                                    )),
                              ),
                            ],
                          ),
                        ),
                      )),
                  Expanded(
                      flex: 2,
                      child: Container(
                        child: Column(
                          mainAxisAlignment:MainAxisAlignment.end,
                          children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 24),
                            child: Observer(
                              builder: (context) => TextFormField(
                                style: TextStyle(
                                    color: AppColors.appBlack,
                                    fontWeight: FontWeight.normal),
                                focusNode: focusNode,
                                controller: controllerPin,
                                //obscureText: true,
                                autofocus: false,
                                autocorrect: false,
                                decoration: InputDecoration(
                                    filled: false,
                                    hintText: "printSumm".tr(),
                                    hintStyle: TextStyle(
                                        color: AppColors.appDarkGray,
                                        fontSize: 12),
                                    fillColor: Colors.transparent),
                              ),
                            ),
                          ),
                          Observer(
                            builder: (context) => Flexible(
                              child: PinCodeKeyboard(onTap: onTap),
                            ),
                          ),
                        ]),
                      ))
                ],
              )));
    },
  );
}
