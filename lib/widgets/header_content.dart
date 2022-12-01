import 'dart:ffi';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pcassa/screens/sign_in_screen/sign_in_screen.dart';
import 'package:pcassa/store/basket_state/basket_state.dart';
import 'package:pcassa/themes/dark_theme.dart';
import '../store/auth/auth_state.dart';
import '../themes/app_colors.dart';
import "dart:async";
class HeaderContent extends StatefulWidget {
  HeaderContent({
    Key? key,
    this.isDashboard = false,
  }) : super(key: key);

  final bool isDashboard;
  
  static List<Locale> langeList = [
    Locale('hy'),
    Locale('ru'),
    Locale('en'),
  ];
  //final dataFormat = ;
  static var hour_m = DateFormat("hh:mm").format(GetIt.I<AuthState>().time);

  static int? defaultLangNum = 0;
  static final Map<String,int> languageCode = {
    "hy":0,
    "ru":1,
    "en":2
  };
  static final Map<int,String> codeLanguage = {
    0:"hy",
    1:"ru",
    2:"en"
  };
  static bool isPuprle = false ; 
  @override
  State<HeaderContent> createState() => _HeaderContentState();
}

class _HeaderContentState extends State<HeaderContent> {
  var colorState = GetIt.I<AppColorobs>();
  var authState = GetIt.I<AuthState>();
  final basketState = GetIt.I<BasketState>();
  List<SvgPicture> langImageList = [
    SvgPicture.asset('assets/languages/am.svg',height: 20,width: 20),
    SvgPicture.asset('assets/languages/rus.svg',height: 20,width: 20),
    SvgPicture.asset('assets/languages/us.svg',height: 20,width: 20),
  ];
  
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    //authState.time = DateTime.now();
    //bool isPuprle = HeaderContent.isPuprle;
    //print(darkTheme);
    //var time = DateTime.now();
    //EasyLocalization.of(context)!.setLocale(HeaderContent.langeList[HeaderContent.defaultLangNum as int]);
    return Observer(
      builder:(context) =>  Container(
        width: size.width,
        color:AppColors.appGray,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 6),
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('nameAndVersionApp'.tr(),
                    style:TextStyle(color:AppColors.appBlack)),
                 Align(
                  child: Text("${DateFormat("hh:mm").format(GetIt.I<AuthState>().time)}",
                  style: TextStyle(color:AppColors.appBlack)),
            ),
                
                Text(
                    widget.isDashboard
                        ? 'waiterInfo'.tr(namedArgs: {
                            'nameWaiter': GetIt.I<AuthState>().currentUser!.fio
                          })
                        : 'licenseExpires'.tr(namedArgs: {'date': '20.12.2022'}),
                    style: TextStyle(color:AppColors.appBlack)),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                        colorState.isPink = colorState.isPink==false? true:false;
                        colorState.isDark = colorState.isDark==false? true:false;
                        //print(colorState.isPink);
                    },
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child:Icon(Icons.color_lens_outlined )
                      ),
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: colorState.isPink == false?AppColors.appGreen:AppColors.appPink,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
                DropdownButton(
                  dropdownColor:AppColors.appBlack,
                  elevation: 0,
                  underline:Container(color:Colors.transparent),
                  //focusColor: Color.fromARGB(125, 223, 222, 222),
                  items:langImageList.map((e) {
                    return DropdownMenuItem(
                      child:e,
                      value:langImageList.indexOf(e), 
                      );
                  }).toList() , 
                  icon: Icon(Icons.arrow_drop_down),
                  onChanged: (value)async {
                    //print(HeaderContent.codeLanguage[value as int]);
                    var res = await basketState.changeLanguage(
                      id: authState.info?.id , language:HeaderContent.codeLanguage[value as int]  , tip: "kassa");
                    HeaderContent.defaultLangNum = value as int;
                    //print(res);
                    authState.language = res.language;
                    HeaderContent.defaultLangNum = HeaderContent.languageCode[authState.language];
                    EasyLocalization.of(context)!.setLocale(HeaderContent.langeList[HeaderContent.defaultLangNum as int]);
                    //EasyLocalization.of(context)!.setLocale(HeaderContent.langeList[value as int]);
                    //context.setLocale(Locale('en'));
                    //print(context.locale);
                  })
              ],
            ),
          ],
        ),
      ),
    );
  }
}
