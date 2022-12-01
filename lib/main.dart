import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:pcassa/store/stop_list_state/stoplist.dart';
import 'package:pcassa/themes/app_colors.dart';
import 'constants/app_settings.dart';
import 'constants/assets.dart';
import 'http/dio_options.dart';
import 'http/interceptors/api_interceptor.dart';
import 'services.dart';
import 'store/auth/auth_state.dart';
import 'store/basket_state/basket_state.dart';
import 'store/payment_state/payment_state.dart';
import 'store/services_state/services_state.dart';
import 'store/tables_state/tables_state.dart';
import 'themes/light_theme.dart';
import 'themes/dark_theme.dart';
import 'dart:async';
//192.168.3.204:3456
//37.252.84.56:3456
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EasyLocalization.ensureInitialized();

  Future<String> getFileData(String path) async {
    return rootBundle.loadString(path);
  }
  final data = await getFileData(Assets.settings);
  final parseSettings = data.split('\n').sublist(1,4);
  final defaultLanguageCode = parseSettings[0].split(':');
  final defaultLanguage = Locale(defaultLanguageCode[1].trim());
  final supportedLanguages = parseSettings[1]
      .split(':')[1]
      .split(',')
      .map((languageCode) => Locale(languageCode.trim()))
      .toList();
  AppSettings.languageCode = defaultLanguageCode[1].trim();
  AppSettings.baseUrl = parseSettings[2];
  //print(AppSettings.baseUrl);
  dio = Dio(
    BaseOptions(
      baseUrl: AppSettings.baseUrl,
      connectTimeout: 5000,
      receiveTimeout: 100000,
      contentType: Headers.jsonContentType,
    ),
  )..interceptors.addAll(
      <Interceptor>[
        ApiInterceptor(),
      ],
    );
  //print(supportedLanguages);

  GetIt.I.registerSingleton(AuthState());
  GetIt.I.registerSingleton(ServicesState());
  GetIt.I.registerSingleton(BasketState());
  GetIt.I.registerSingleton(TablesState());
  GetIt.I.registerSingleton(PaymentState());
  GetIt.I.registerSingleton(AppColorobs());
  GetIt.I.registerSingleton(StopListState());
  runApp(
    EasyLocalization(
      supportedLocales: supportedLanguages,
      useOnlyLangCode: true,
      startLocale: defaultLanguage,
      useFallbackTranslations: true,
      path: Assets.languages,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final colorState = GetIt.I<AppColorobs>();
    
    Timer.periodic(Duration(seconds: 5), (Timer t)  { 
        //authState.changeTime();

          GetIt.I<AuthState>().time = DateTime.now();
     
        //print(GetIt.I<AuthState>().time);
    });
    // Timer.periodic(Duration(seconds: 5), (Timer t)  { 
    //     authState.changeTime();
    //     print(authState.time);
    // });
    return Observer(
      builder:(context) =>  MaterialApp.router( 
        //theme: ThemeData.dark(),
        title: 'Pcasa', 
        debugShowCheckedModeBanner: false,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        localizationsDelegates: context.localizationDelegates,
        theme: lightTheme,
        routerDelegate: router.delegate(),
        routeInformationParser: router.defaultRouteParser(),
      ),
    );
  }
}
