// ignore_for_file: prefer_const_constructors

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:pcassa/http/repositories/services_repository.dart';
import 'package:pcassa/store/sign_in_state/sign_in_state.dart';
import 'package:pcassa/store/stop_list_state/stoplist.dart';

import '../models/stoplist_model/stoplistmodel.dart';
import '../store/basket_state/basket_state.dart';
import '../store/search_state/search_state.dart';
import '../store/services_state/services_state.dart';
import '../themes/app_colors.dart';
import '../widgets/custom_button.dart';
import '../widgets/pin_code_keyboard.dart';
import 'widgets/stop_list_header.dart';
import 'widgets/stop_list_modal.dart';

Future<void> showStopListDialog({
  required BuildContext context,
  required String title,
}) async {
  final servicesState = GetIt.I<ServicesState>();
  final basketState = GetIt.I<BasketState>();
  final stopListState = GetIt.I<StopListState>();
  final searchState = SearchState();
  final controller = TextEditingController();
  final controller_ = TextEditingController();
  var colorState = GetIt.I<AppColorobs>();
  searchState
    ..products = servicesState.products
    ..searchProducts = servicesState.products;

  final width = MediaQuery.of(context).size.width;
  final height = MediaQuery.of(context).size.height;
  stopListState.stopList = await ServicesRepository.getStopModel();
  stopListState.searchStopList = await ServicesRepository.getStopModel();
  onTap(String value) {
    switch (value) {
      case 'Clear':
        controller.clear();
        searchState.onSearch(controller.text);
        break;
      case 'done':
        searchState.onSearch(controller.text);
        break;
      default:
        {
          controller.text = controller.text + value;
          searchState.onSearch(controller.text);
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
      return Observer(
        builder:(context)=> AlertDialog(
          titlePadding: EdgeInsets.zero,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
          ),
          contentPadding: const EdgeInsets.all(12),
          //translate
          title: StopListModalHeader(title: 'stoplist'),
          content: Row(
            children: [
              Expanded(
                flex: 1,
                child: SizedBox(
                  height: height * 0.7,
                  child: Column(
                    children: [
                      SizedBox(
                        width: width*0.3,
                        child: TextField(
                          onChanged: searchState.onSearch,
                          controller: controller,
                          decoration: InputDecoration(
                              hintText: 'Search in menu',
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 2, color: AppColors.appRed),
                              )),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Container(
                        height: height * 0.6,
                        decoration: BoxDecoration(
                          color: AppColors.appWhite,
                          boxShadow: [
                          BoxShadow(
                            color: AppColors.appGray,
                            blurRadius: 5,
                            offset: Offset(5, 8), // Shadow position
                          ),
                        ]),
                        child: Expanded(
                          child: SizedBox(
                            width: width*0.3,
                            height: height*0.6,
                            child: Observer(
                              builder:(context)=> GridView.count(
                                crossAxisCount: 2,
                                childAspectRatio: 2,
                                crossAxisSpacing: 10,
                                padding: const EdgeInsets.symmetric(
                                  vertical: 12,
                                  horizontal: 16,
                                ),
                                children: searchState.searchProducts
                                        .map(
                                          (product) => Padding(
                                            padding: const EdgeInsets.only(bottom: 8),
                                            child: CustomButton(
                                              onTap: () async {
                                                var x = await showStopDialog(
                                                    context: context,
                                                    title: 'Quantity of item',
                                                    productModel: product);
                                                    stopListState.mapStopList = Map.fromIterable(stopListState.stopList, key: (e) => e.name, value: (e) => e.quantity);
                                                //basketState.onAddToBasket(product);
                                              },
                                              backgroundColor:colorState.isDark==false?
                                                  AppColors.appLightGreen:
                                                  AppColors.appLightPink,
                                              minimumSize: const Size(300, 100),
                                              padding: const EdgeInsets.all(12),
                                              foregroundColor: AppColors.appBlack,
                                              child: Text(
                                                product.name!,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ),
                                        )
                                        .toList(),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                flex: 1,
                child: SizedBox(
                  height: height * 0.7,
                  child: Column(
                    children: [
                      TextField(
                        onChanged: stopListState.onSearch,
                        controller: controller_,
                        decoration: InputDecoration(
                            hintText: 'Search in stoplist',
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2, color: AppColors.appRed),
                            )),
                      ),
                      Container(
                        height: height * 0.6,
                        decoration: BoxDecoration(
                          color: AppColors.appWhite,
                          ),
                        child: Expanded(
                          child: SizedBox(
                            width: width*0.4,
                            height: height*0.6,
                            child: Observer(
                              builder:(context) =>  GridView.count(
                                crossAxisCount: 2,
                                childAspectRatio: 2,
                                crossAxisSpacing: 10,
                                padding: const EdgeInsets.symmetric(
                                  vertical: 12,
                                  horizontal: 16,
                                ),
                                children: stopListState.searchStopList
                                        .map(
                                          (product) => Padding(
                                            padding: const EdgeInsets.only(bottom: 8),
                                            child: CustomButton(
                                              onTap: () async {
                                               
                                              },
                                              backgroundColor:colorState.isDark==false?
                                                  AppColors.appLightGreen:
                                                  AppColors.appLightPink,
                                              minimumSize: const Size(200, 120),
                                              //padding: const EdgeInsets.all(12),
                                              foregroundColor: AppColors.appBlack,
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                    top: 0,
                                                    child: Padding(
                                                      padding: const EdgeInsets.all(8.0),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          SizedBox(
                                                            width: width*0.1,
                                                            child: Text(
                                                              product.name,
                                                              maxLines: 2,
                                                              //overflow: TextOverflow.ellipsis,
                                                              //textAlign: TextAlign.center,
                                                            ),
                                                          ),
                                                          Text(
                                                            product.quantity.toString()+' hat',
                                                            maxLines: 2,
                                                        
                                                            overflow: TextOverflow.ellipsis,
                                                            textAlign: TextAlign.center,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    bottom: 0,
                                                    left: 0,
                                                    right: 0,
                                                    child: CustomButton(
                                                      onTap:() async{
                                                         stopListState.stopList = await ServicesRepository.delStopModel(kod_tov: product.kod_tov);
                                                         stopListState.searchStopList = stopListState.stopList;
                                                         stopListState.mapStopList = Map.fromIterable(stopListState.searchStopList, key: (e) => e.name, value: (e) => e.quantity);
                                                      },
                                                      minimumSize: Size(200,20 ),
                                                      backgroundColor: colorState.isDark==false?
                                                  AppColors.appRed:
                                                  AppColors.appDarkPink,
                                                      child:Text("Delete",style: TextStyle(color: AppColors.appWhite),),),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        )
                                        .toList(),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
