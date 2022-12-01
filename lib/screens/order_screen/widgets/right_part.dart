// ignore_for_file: unnecessary_parenthesis

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:pcassa/models/addon_model/addon_model.dart';
import 'package:pcassa/models/discount_model/discount_model.dart';
import 'package:pcassa/router.gr.dart';
import 'package:pcassa/widgets/pin_code_keyboard_2.dart';

import '../../../constants/custom_icons.dart';
import '../../../constants/order_page_types.dart';
import '../../../http/repositories/services_repository.dart';
import '../../../models/category_model/category_model.dart';
import '../../../models/menu_abstract_model/menu_abstract_model.dart';
import '../../../models/order_info_model/order_info_model.dart';
import '../../../models/order_model/order_model.dart';
import '../../../models/product_model/product_model.dart';
import '../../../popups/modifier_modal.dart';
import '../../../services.dart';
import '../../../store/auth/auth_state.dart';
import '../../../store/basket_state/basket_state.dart';
import '../../../store/loading/loading_state.dart';
import '../../../store/services_state/services_state.dart';
import '../../../store/stop_list_state/stoplist.dart';
import '../../../themes/app_colors.dart';
import '../../../utils/error_handler.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/pin_code_keyboard.dart';

var opener = false;
class MenuPart extends StatefulWidget {
  const MenuPart({
    Key? key,
  }) : super(key: key);
  static final controller = TextEditingController();
  static final numText = RegExp(r'[0-9]+');
  static final focusNode = FocusNode();
  static final checkText = RegExp(r'^[1-9]{1}[0-9]{0,}\+$');
  static final checkText2 = RegExp(r'^[1-9]{1}[0-9]{0,}$');
  
  @override
  State<MenuPart> createState() => _MenuPartState();
}

class _MenuPartState extends State<MenuPart> {
  final servicesState = GetIt.I<ServicesState>();
  final basketState = GetIt.I<BasketState>();
  final colorState = GetIt.I<AppColorobs>();
  final stopListState = GetIt.I<StopListState>();
  var controller = MenuPart.controller;
  final authState = GetIt.I<AuthState>();
  final loadingState =LoadingState();
  final focusNode = MenuPart.focusNode;
  final checkText = MenuPart.checkText;
  final checkText2 = MenuPart.checkText2;
  var numText = MenuPart.numText;
  @override
  void initState(){
    opener = true;
  }
  @override
  void dispose() {
    //controller.dispose();
    //focusNode.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    opener = true;
    final size = MediaQuery.of(context).size;
    return Observer(builder: (context){
      //print(colorState.pageT );
      if (colorState.pageT == 2){return discountScreen();}
      else if(colorState.pageT == 1){return pinCodeScreen();}
      return Text('');
    } 
    );
  }
  Widget discountScreen(){
    //print(servicesState.addons);
    return Container(
      padding: EdgeInsets.all(10),
      child: GridView.count(
        crossAxisCount: 1,
        children:
                    servicesState.addons
                    .map(
                      (addonGroup) =>GridView.count(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        childAspectRatio: 5/2,
                        children: (addonGroup.items)
                            .map(
                              (item)=>
                               CustomButton(
                                backgroundColor: colorState.isPink == false?AppColors.appLightGreen:AppColors.appLightPink,
                                onTap: () async{
                                  //print(1);
                                  await GetIt.I<BasketState>().addDiscountToBasket(id: -item.id);
                                  //router.pop;
                                },
                                padding: const EdgeInsets.symmetric(
                                    vertical: 16, horizontal: 28),
                                overlayColor: AppColors.appRed,
                                child: Text(
                                    '${item.name} ${item.val}${item.tip}',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4!
                                        .copyWith(
                                            color: AppColors.appBlack)),
                              )
                            )
                            .toList(),
                      ),
                    )
                    .toList(),
        ));
  }
  Widget pinCodeScreen(){
    final size = MediaQuery.of(context).size;
    return Observer(
      builder:(context)=> Container(
        
          //padding: EdgeInsets.only(right:100),
         // color: AppColors.appBlack,
          width: size.width,
          child: Expanded(
              flex: 1,
              child: Padding(
                  padding: const EdgeInsets.all(0),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                        padding: EdgeInsets.only(top:size.height<700? size.height*0.04:size.height*0.1),
                          height: size.height*0.5,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 24),
                                child: TextField(
                                  
                                  onChanged: (value) async {
                                    if (checkText.hasMatch(controller.text) &&
                                        controller.text.length <= 7) {
                                      if (basketState.selectedBasketItem != null) {
                                        //controller.text = '';
                                        try {
                                          var txt = numText.firstMatch(controller.text);
                                          controller.text = txt!.group(0).toString();
                                          await basketState.onProductBasketItem(
                                              basketState.selectedBasketItem!.code,
                                              int.parse(controller.text));
                                          controller.clear();
                                        } catch (e) {
                                          UiUtils.errorModal(
                                              context: context, errorCode: 'any');
                                        }
                                      }
                                      focusNode.requestFocus();
                                    }
                                  },
                                  onSubmitted: (value) async {
                                    try {
                                      var value = await ServicesRepository.barcodeSearch(
                                            barCode: controller.text);
                                            //print("########## ${value}");
                                        basketState.onAddToBasket(value!);
                                        //controller.clear();
                                    } catch (e) {
                                      UiUtils.errorModal(context: context, errorCode: "notfound".tr());
                                    }
                                    finally{
                                      controller.clear();
                                      focusNode.requestFocus();
                                    }
                                    
                                  },
                                  style: const TextStyle(
                                      color: AppColors.appBlack,
                                      fontWeight: FontWeight.w200),
                                  //onEditingComplete: onGetElement,
                                  focusNode: focusNode,
                                  controller: controller,
                                  //  obscureText: true,
                                  autofocus: true,
                                  autocorrect: false,
                                  decoration: InputDecoration(
                                    //hintText: 'kod'.tr(),
                                  ),
                                ),
                              ),
                              Container(
                            child: Expanded(
                              flex: 1,
                              child: PinCodeKeyboard2(
                                childAspectRatio: size.height<800? 5/3:3/2,
                              
                                onTap: onGetElement,
                               ),
                            ),
                          ),
                            ],
                          ),
                        ),
                      ),
                      
                      //Expanded(child: SizedBox()),
                      Observer(
                        builder: (context) => Container(
                          // decoration: const BoxDecoration(
                          //   border: Border(
                          //     //  right: BorderSide(width: 2, color: Colors.white),
                          //     left: BorderSide(width: 1, color: Colors.white),
                          //   ),
                          // ),
                          child: Padding(
                            padding: const EdgeInsets.only(bottom:2.0),
                            child: CustomButton(
                              onTap: true
                                  ? () async {
                                      //await basketState.OnSaved();
                                      try {
                                        if(!basketState.basketIsEmpty){
                                          await onCreateOrder(context: context);
                                    controller.clear();
                                    focusNode.requestFocus();
                                        }
                                      } catch (e) {
                                        UiUtils.errorModal(context: context, errorCode: "Error");
                                      }
                                    
                                    }
                                  : null,
                              minimumSize:Size(double.infinity, 90),
                              backgroundColor: colorState.isPink == false?AppColors.appGreen:AppColors.appDarkPink,
                              padding: const EdgeInsets.all(24),
                              hasBorderRadius: true,
                              child: Text('orderPageTypes.quickCheck'.tr(),
                        style: Theme.of(context)
                              .textTheme
                              .headline3!
                              .copyWith(color: AppColors.appWhite)),
                            ),
                          ),
                        ),
                      )
                    ],
                    
                  )
                  )
                  ),
        ),
    );
  }
  // @override
  // Widget build(BuildContext context) {
  //   final size = MediaQuery.of(context).size;
  //   //checkCountInStop();
  //   return Observer(
  //     builder: (_) => Column(
  //       children: [
  //         if (servicesState.selectedSubCategory != null)
  //           Expanded(
  //             child: Container(
  //               margin: const EdgeInsets.only(bottom: 2),
  //               child: Row(
  //                 children: [
  //                   Expanded(
  //                     child: CustomButton(
  //                       onTap: onBack,
  //                       minimumSize:
  //                           const Size(double.infinity, double.infinity),
  //                       backgroundColor: colorState.isDark == false
  //                           ? AppColors.appRed
  //                           : AppColors.appDarkPink,
  //                       child: CustomIcons.back,
  //                     ),
  //                   ),
  //                   const SizedBox(width: 2),
  //                   Expanded(
  //                     flex: 4,
  //                     child: Container(
  //                       alignment: Alignment.center,
  //                       width: double.infinity,
  //                       height: double.infinity,
  //                       decoration: BoxDecoration(
  //                         borderRadius: BorderRadius.circular(4),
  //                         color: colorState.isDark == false
  //                             ? AppColors.appRed
  //                             : AppColors.appDarkPink,
  //                       ),
  //                       child: Text(
  //                         servicesState.selectedSubCategory!.caption!,
  //                         style: Theme.of(context)
  //                             .textTheme
  //                             .headline1!
  //                             .copyWith(color: AppColors.appWhite),
  //                         textAlign: TextAlign.center,
  //                         maxLines: 2,
  //                         overflow: TextOverflow.ellipsis,
  //                       ),
  //                     ),
  //                   )
  //                 ],
  //               ),
  //             ),
  //           )
  //         else
  //           Expanded(
  //             child: Container(
  //               margin: const EdgeInsets.only(bottom: 2),
  //               decoration: BoxDecoration(
  //                 borderRadius: BorderRadius.circular(4),
  //                 color: colorState.isDark == false
  //                     ? AppColors.appRed
  //                     : AppColors.appDarkPink,
  //               ),
  //             ),
  //           ),
  //         Expanded(
  //           flex: 7,
  //           child: GridView.count(
  //             primary: false,
  //             childAspectRatio: ((size.width / 3) / size.height) / 0.285,
  //             crossAxisSpacing: 2,
  //             mainAxisSpacing: 2,
  //             crossAxisCount: 3,
  //             children: [
  //               for (var i = 0; i < servicesState.searchMenuItems.length; i++)
  //                 CustomButton(
  //                   onTap: () {
  //                     //checkCountInStop();
  //                     onTap(
  //                       context: context,
  //                       item: servicesState.searchMenuItems[i],
  //                     );
  //                   },
  //                   padding: const EdgeInsets.all(12),
  //                   backgroundColor: servicesState.searchMenuItems[i].isProduct
  //                       ? colorState.isDark == false
  //                           ? AppColors.appGreen
  //                           : AppColors.appDarkPink
  //                       : colorState.isDark == false
  //                           ? AppColors.appLightGreen
  //                           : AppColors.appPink,
  //                   foregroundColor: servicesState.searchMenuItems[i].isProduct
  //                       ? colorState.isDark == false
  //                           ? AppColors.appGreen
  //                           : AppColors.appDarkPink
  //                       : colorState.isDark == false
  //                           ? AppColors.appLightGreen
  //                           : AppColors.appPink,
  //                   child: Stack(children: [
  //                     Positioned(
  //                       top: 20,
  //                       bottom: 0,
  //                       left: 0,
  //                       right: 0,
  //                       child: Text(
  //                         servicesState.searchMenuItems[i].isProduct
  //                             ? (servicesState.searchMenuItems[i]
  //                                     as ProductModel)
  //                                 .name!
  //                             : (servicesState.searchMenuItems[i]
  //                                     as CategoryModel)
  //                                 .caption!,
  //                         maxLines: 2,
  //                         overflow: TextOverflow.ellipsis,
  //                         textAlign: TextAlign.center,
  //                         style: TextStyle(
  //                             color:colorState.isDark== false
  //                                 ? servicesState.searchMenuItems[i].isProduct?AppColors.appWhite:AppColors.appBlack
  //                                 : servicesState.searchMenuItems[i].isProduct?AppColors.appWhite:AppColors.appBlack),
  //                       ),
  //                     ),
  //                     Observer(builder: ((context) {
  //                       stopListState.mapStopList = Map.fromIterable(
  //                           stopListState.stopList,
  //                           key: (e) => e.name,
  //                           value: (e) => e.quantity.toInt());
  //                       var x = checkCountInStop(
  //                           item: servicesState.searchMenuItems[i]);
  //                       return Positioned(
  //                           right: 0,
  //                           top: 0,
  //                           child: x == true
  //                               ? Container(
  //                                   width: 25,
  //                                   height: 25,
  //                                   decoration: BoxDecoration(
  //                                       color: AppColors.appLightGreen,
  //                                       shape: BoxShape.circle),
  //                                   child: Center(
  //                                       child: Text(
  //                                     "${stopListState.mapStopList[(servicesState.searchMenuItems[i] as ProductModel).name].toString()}",
  //                                     style: TextStyle(
  //                                         fontSize: 12,
  //                                         color: AppColors.appBlack),
  //                                   )),
  //                                 )
  //                               : Text(''));
  //                     }))
  //                   ]),
  //                 ),
  //             ],
  //           ),
  //         ),
  //         const SizedBox(height: 16),
  //       ],
  //     ),
  //   );
  // }

  void onBack() {
    if (servicesState.selectedSubCategory!.isroot == 1) {
      final findParent = servicesState.categories.firstWhere((category) =>
          category.guid == servicesState.selectedSubCategory!.parentguid);

      servicesState.onFilterCategory(findParent);
    }
  }
   Future<void> onCreateOrder({required context}) async {
    try {
      basketState.basket.clear();
      basketState.selectedBasketItem = null;
      loadingState.startLoading();
      final createdOrder = OrderModel(
        orderinfo: OrderInfoModel(
          cashid: 1,
          paidamount: 0,
          paidamountcard: 0,
          deptamount: 0,
          waiter_name: authState.currentUser?.fio ?? '',
        ),
      );
      //await basketState.OnSaved();
      
      final order = await basketState.createOrder(createdOrder: createdOrder);
      basketState.listOfOrders = await ServicesRepository.getSaved(
      waiter_name: authState.currentUser!.fio,
    );
      await router.push(
        OrderRoute(
          order: order,
          orderPageType: OrderPageType.quickOrder,
          basket: [],
        ),
      );
      
    } catch (e) {
      await UiUtils.errorModal(
        context: context,
        errorCode: 'errors.any',
      );
    } finally {
      loadingState.stopLoading();
    }
  }
  onTap(String value) {
    focusNode.requestFocus();
    switch (value) {
      case 'Clear':
        //controller.clear();
        break;
      case 'done':
        //onSignIn();
        break;
      default:
        {
          controller.text = controller.text + value;
           //focusNode.requestFocus();
          //signInState.code = controller.text.trim();
        }
    }
  }
  onGetElement(String value) async{
    switch (value) {
      case 'Clear':
        controller.text = controller.text.length != 0
            ? controller.text.substring(0, controller.text.length - 1)
            : '';
             focusNode.requestFocus();
        break;
      case 'done':
        {
          try {
            var value = await ServicesRepository.barcodeSearch(
                                          barCode: controller.text);
                                          //print("########## ${value}");
                                      basketState.onAddToBasket(value!);
                                      controller.clear();
                                   
          } catch (e) {
            //print('rgergr');
            UiUtils.errorModal(context: context, errorCode: "notfound".tr());
          }
          finally{
            controller.clear();
            focusNode.requestFocus();
          }
        }
        focusNode.requestFocus();
        break;
      default:
        {
          controller.text = controller.text + value;
          focusNode.requestFocus();
        }
    }
  }
}
  // bool checkCountInStop({required item}) {
  //   for (var i = 0; i < servicesState.searchMenuItems.length; i++) {
  //     //print(servicesState.searchMenuItems[i]);
  //     if (item.isProduct) {
  //       //print(stopListState.mapStopList);
  //       //print((servicesState.searchMenuItems[i] as ProductModel ).name);
  //       //print('anuma');
  //       return stopListState.mapStopList
  //           .containsKey((item as ProductModel).name.toString());
  //     }
  //   }
  //   return false;
  // }

  // void onTap({
  //   required BuildContext context,
  //   required MenuAbstractModel item,
  // }) async {
  //   if (item.isProduct) {
  //     final product = item as ProductModel;
  //     await basketState.onAddToBasket(product);
  //     if (product.modifrequired && product.guid_mod.isNotEmpty) {
  //       onShowModifiersModal(context: context);
  //     }
  //   } else {
  //     servicesState.onFilterCategory(item as CategoryModel);
  //   }
  // }
// }
