
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:pcassa/store/basket_state/basket_state.dart';
import '../../models/error/error_model.dart';
import '../../router.gr.dart';
import '../../services.dart';
import '../../constants/custom_icons.dart';
import '../../store/auth/auth_state.dart';
import '../../store/loading/loading_state.dart';
import '../../themes/app_colors.dart';
import '../../utils/error_handler.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/header_content.dart';

class NestedDashboard extends StatefulWidget {
  const NestedDashboard({ Key? key }) : super(key: key);

  @override
  _NestedDashboardState createState() => _NestedDashboardState();
}

class _NestedDashboardState extends State<NestedDashboard> {
  final loadingState = LoadingState();
  final basketState = GetIt.I<BasketState>();
  final authState = GetIt.I<AuthState>();
  @override
  void initState() {
    super.initState();
    loadingState.startLoading();
    loadingState.stopLoading();
    //afterFirstLayout(context);
  }
  // Future<void> afterFirstLayout(BuildContext context) async {
  //   try {
  //     //await basketState.getSalesProduct();
  //     await basketState.getViruchkaI();
  //     //print(basketState.saleModelInfo);
  //     //print(result);
  //   } on DioError catch (e) {
  //     try {
  //       final error = ErrorModel.fromJson(e.response!.data);

  //       await UiUtils.errorModal(
  //         context: context,
  //         errorCode: error.errors,
  //       );
  //     } catch (e) {
  //       await UiUtils.errorModal(
  //         context: context,
  //         errorCode: 'errors.any',
  //       );
  //     }
  //   } finally {
  //     loadingState.stopLoading();
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    final colorState = GetIt.I<AppColorobs>();
    final size = MediaQuery.of(context).size;
    //loadingState.stopLoading();
    return Material(
      child: Column(
        children: [
          HeaderContent(isDashboard: true),
          Expanded(child: 
          Column(children: [
            Observer(
                      builder: (_) =>  Container(
                              decoration: BoxDecoration(
                                color: colorState.isDark == false? AppColors.appGreen:AppColors.appDarkPink,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              margin: const EdgeInsets.all(2),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomButton(
                                    onTap: router.pop,
                                    minimumSize: const Size(100, 60),
                                    backgroundColor: colorState.isDark == false? AppColors.appGreen:AppColors.appDarkPink,
                                    padding: const EdgeInsets.all(24),
                                    child: CustomIcons.back,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 24),
                                    child: Text(
                                      "reports".tr(),
                                      style:
                                          Theme.of(context).textTheme.headline3!.copyWith(color: AppColors.appWhite),
                                    )
                                  )
                                ],
                              ),
                            ),
                    ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
            Container(
              //width: 700,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                CustomButton(
                                backgroundColor: AppColors.appGray,
                                onTap: () async{
                                  await  router.push(CashRoute());
                                },
                                minimumSize: const Size(150, 60),
                                padding: const EdgeInsets.symmetric(
                                  vertical: 18,
                                  horizontal: 24,
                                ),
                                child: Text("totalRevenues".tr(),
                                    style: TextStyle(color: AppColors.appBlack)),
                              ),
                              CustomButton(
                                backgroundColor: AppColors.appGray,
                                onTap: () async{
                                  await  router.push(CassRoute());
                                },
                                minimumSize: const Size(150, 60),
                                padding: const EdgeInsets.symmetric(
                                  vertical: 18,
                                  horizontal: 24,
                                ),
                                child: Text('cassbalance'.tr(),
                                    style: TextStyle(color: AppColors.appBlack)),
                              ),
                              CustomButton(
                                backgroundColor: AppColors.appGray,
                                onTap: () async{
                                  await  router.push(SalesRoute());
                                },
                                minimumSize: const Size(150, 60),
                                padding: const EdgeInsets.symmetric(
                                  vertical: 18,
                                  horizontal: 24,
                                ),
                                child: Text("saleProduct".tr(),
                                    style: TextStyle(color: AppColors.appBlack)),
                              ),
              ],),
            ),
              ],
            )
          ],)),
          
        ],
      ),
    );
  }
}