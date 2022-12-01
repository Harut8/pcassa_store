import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'app_colors.g.dart';
final splashScreenGradient = LinearGradient(
  begin: FractionalOffset.topCenter,
  end: FractionalOffset.bottomCenter,
  colors: [
    const Color(0xFF5EBA79).withOpacity(0.4),
    const Color(0xFFF97F7D).withOpacity(0),
  ],
);

class AppColors {
  static const appGray = Color(0xFFD8D8D8);
  static const appDarkGray = Color.fromARGB(255, 105, 105, 105);
  //static const appDarkGray2 = Color.fromARGB(255, 116, 113, 113);
  static const appGreen = Color(0xFF5EBA79);
  static const appRed = Color(0xFFF97F7D);
  static const appLightGreen = Color(0xFFD4EBDB);
  static const appWhite = Color(0xFFFFFEFC);
  static const appBlack = Color(0xFF414342);
  static const appPink = Color.fromRGBO(151, 131, 240, 0.6);
  static const appLightPink = Color.fromRGBO(220, 214, 250, 0.8);
  static const appDarkPink = Color.fromRGBO(81, 49, 230,0.8);
}
class AppColorobs = AppColorobsBase with _$AppColorobs;
abstract class AppColorobsBase with Store{

  @observable
  bool isPink = false;
  @observable
  bool isDark = false;
  @observable
  int pageT = 1;

}