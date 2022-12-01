
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

class SalesScreen extends StatefulWidget {
  const SalesScreen({ Key? key }) : super(key: key);

  @override
  _SalesScreenState createState() => _SalesScreenState();
}

class _SalesScreenState extends State<SalesScreen> {
  final loadingState = LoadingState();
  final basketState = GetIt.I<BasketState>();
  final authState = GetIt.I<AuthState>();
  final time = DateTime.now();
  
  @override
  void initState() {
    super.initState();
    loadingState.startLoading();
    afterFirstLayout(context);
  }
  Future<void> afterFirstLayout(BuildContext context) async {
    try {
      await basketState.getSalesProduct();
      print(basketState.saleModelInfo);
      //print(result);
    } on DioError catch (e) {
      try {
        final error = ErrorModel.fromJson(e.response!.data);

        await UiUtils.errorModal(
          context: context,
          errorCode: error.errors,
        );
      } catch (e) {
        await UiUtils.errorModal(
          context: context,
          errorCode: 'errors.any',
        );
      }
    } finally {
      loadingState.stopLoading();
    }
  }
  @override
  Widget build(BuildContext context) {
    final colorState = GetIt.I<AppColorobs>();
    final size = MediaQuery.of(context).size;
    final form = DateFormat("yyyy-MM-dd").format(authState.time);
    print(form);
    //loadingState.stopLoading();
    return Material(
      child: Column(
        children: [
          HeaderContent(isDashboard: true),
          Expanded(child: 
          Column(children: [
            Observer(
                      builder: (_) => loadingState.isLoading
                          ? const SizedBox()
                          : Container(
                              decoration: BoxDecoration(
                                color: colorState.isDark == false? AppColors.appGreen:AppColors.appDarkPink,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              margin: const EdgeInsets.all(2),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [Row(
                                    children: [CustomButton(
                                    onTap: router.pop,
                                    minimumSize: const Size(100, 60),
                                    backgroundColor: colorState.isDark == false? AppColors.appGreen:AppColors.appDarkPink,
                                    padding: const EdgeInsets.all(24),
                                    child: CustomIcons.back,
                                  ),CustomButton(
                                    onTap: ()async{
                                      await router.popAndPush(DashboardRoute());
                                    },
                                    minimumSize: const Size(100, 60),
                                    backgroundColor: colorState.isDark == false? AppColors.appGreen:AppColors.appDarkPink,
                                    padding: const EdgeInsets.all(24),
                                    child: CustomIcons.home,
                                  ),],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 24),
                                    child: Text(
                                      "saleProduct".tr(),
                                      style:
                                          Theme.of(context).textTheme.headline3!.copyWith(color: AppColors.appWhite),
                                    )
                                  )
                                ],
                              ),
                            ),
                    ),
            Row(children: [
              Expanded(
                flex: 6,
                child:
              Container(
                //height: size.height*0.8,
                decoration: BoxDecoration(
                  color: AppColors.appWhite,
                  boxShadow:[
                          BoxShadow(
                            color: AppColors.appGray,
                            blurRadius: 5,
                            offset: Offset(5, 8), // Shadow position
                          ),
                        ]),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Observer(
                          builder:(context)=> Container(child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('allSumm'.tr(),style:
                                            Theme.of(context).textTheme.headline3!.copyWith(color: Colors.black)),
                              Text("${DateFormat("dd/MM/yyyy").format(authState.time)}",),
                              Text("${DateFormat("hh:mm").format(authState.time)}")
                            ],
                          ),),
                        ),
                        Observer(
                          builder:(context)=> loadingState.isLoading?SizedBox():Container(child: Column(
                           mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(basketState.saleModelInfo!.summa.toString(),style: Theme.of(context).textTheme.headline3!.copyWith(color: Colors.black)),
                            ],
                          )),
                        )
                      ],
                    ),
                  ),SizedBox(height: 50,),
                  Observer(
                    builder:(context) =>loadingState.isLoading?SizedBox():  Padding
                    (padding: EdgeInsets.all(20),
                    child: SingleChildScrollView(
                      child:Table(
                        //textBaseline: TextBaseline.alphabetic,
                        //textDirection:TextDirection.LTR ,
                        //border: TableBorder(bottom: BorderSide(color: Colors.black)),
                        children:[
                          TableRow(
                            decoration: BoxDecoration(
                              border: Border(bottom:BorderSide(color: Colors.black))
                            ),
                            children: [
                            Text('No',),
                            Text("kod".tr(),),  
                            Text("nname".tr(),), 
                            Text("count".tr(),),
                            Text("allSumm".tr().split(" ")[1],)],
                            ),
                          for(var info in basketState.saleModelInfo!.items!)
                            TableRow(children:[
                              Text(info.kod_tov.toString(),style: Theme.of(context).textTheme.headline3!.copyWith(color: Colors.black)),
                              Text(info.kod_tov.toString(),style: Theme.of(context).textTheme.headline3!.copyWith(color: Colors.black)),
                              Text(info.name.toString(),style: Theme.of(context).textTheme.headline3!.copyWith(color: Colors.black)),
                              Text(info.Quantity.toString(),style: Theme.of(context).textTheme.headline3!.copyWith(color: Colors.black)),
                              Text(info.Amount.toString(),style: Theme.of(context).textTheme.headline3!.copyWith(color: Colors.black)),
                            ]
                            )
                        
                        ] ,
                      ),
                    ),),
                  )
                ],
                ),
              )
               ),
              Expanded(
                flex: 1,
          
                  //height: size.height*0.8,
                  
                  child: Column(
                    verticalDirection: VerticalDirection.down,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [InkWell(
                    child:Icon(
                      Icons.print,
                      size: (100),
                      ) ,)]),
                )
            ],)
          ],))
        ],
      ),
    );
  }
}