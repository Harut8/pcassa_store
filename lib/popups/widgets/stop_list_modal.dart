import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pcassa/models/product_model/product_model.dart';
import 'package:pcassa/models/stoplist_model/stoplistmodel.dart';

import '../../http/repositories/services_repository.dart';
import '../../services.dart';
import '../../store/basket_state/basket_state.dart';
import '../../store/stop_list_state/stoplist.dart';
import '../../themes/app_colors.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/pin_code_keyboard.dart';
import 'modal_header.dart';
import 'package:flutter/material.dart';

Future showStopDialog({
  required BuildContext context,
  required String title,
  required ProductModel productModel
}) async {
  final focusNode = FocusNode();
  final controller = TextEditingController(text: '1');
  final width = MediaQuery.of(context).size.width;
  final height = MediaQuery.of(context).size.height;
  final stopListState = GetIt.I<StopListState>();

  final reg = RegExp(r'\d+');
  void onDone() async{
    if(reg.hasMatch(controller.text)){   
      //print('k')              ;
      var model = StopListModel(
            description:"dzvadzex",
            name: productModel.name!,
            kod_tov: productModel.kod_tov!,
            quantity:double.parse(controller.text) 
      );                  
      stopListState.searchStopList = await ServicesRepository.addStopModel(model: model);
      stopListState.stopList = stopListState.searchStopList;
      
      router.pop(true);
    }
  }

  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return GestureDetector(
        onTap: focusNode.requestFocus,
        child: SimpleDialog(
          titlePadding: EdgeInsets.zero,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
          ),
          title: ModalHeader(title: title),
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 60,
                  child: TextField(
                    controller: controller,
                    focusNode: focusNode,
                    autofocus: true,
                    onEditingComplete: onDone,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline1!.copyWith(
                          color: AppColors.appBlack,
                        ),
                  ),
                ),
                SizedBox(
                  height: height * 0.4,
                  width: width * 0.25,
                  child: PinCodeKeyboard(
                    onTap: (value) async{
                      focusNode.requestFocus();
                      switch (value) {
                        case 'Clear':
                          controller.clear();
                          break;
                        case 'done':
                          onDone();
                          break;
                        default:
                          {
                            controller.text = controller.text + value;
                          }
                      }
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    },
  );
}

// quantity modal
