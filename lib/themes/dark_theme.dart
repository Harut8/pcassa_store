import 'package:flutter/material.dart';

import 'app_colors.dart';

final base = ThemeData.dark();

final darkTheme = base.copyWith(
  scaffoldBackgroundColor: AppColors.appBlack,
  dialogBackgroundColor: AppColors.appBlack,
  appBarTheme: const AppBarTheme(
    color: AppColors.appRed,
  ),
  cardColor: AppColors.appBlack,
  canvasColor: AppColors.appBlack,
  primaryColor: AppColors.appRed,
  indicatorColor: AppColors.appRed,
  progressIndicatorTheme: const ProgressIndicatorThemeData(
    color: AppColors.appPink,
  ),
  bottomSheetTheme: BottomSheetThemeData(
    backgroundColor: Colors.black.withAlpha(1),
  ),
  inputDecorationTheme: base.inputDecorationTheme.copyWith(
    fillColor: Colors.white.withOpacity(0.9),
    hoverColor: Colors.white.withOpacity(0.9),
    contentPadding: const EdgeInsets.symmetric(
      horizontal: 16,
      vertical: 8,
    ),
    border: InputBorder.none,
    disabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(12),
    ),
    enabledBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)),
      borderSide: BorderSide(color: Colors.transparent),
    ),
    focusedBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)),
      borderSide: BorderSide(color: Colors.transparent),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: AppColors.appRed),
      borderRadius: BorderRadius.circular(12),
    ),
    filled: true,
    labelStyle: const TextStyle(
      color: AppColors.appBlack,
      fontSize: 16,
    ),
    helperStyle: const TextStyle(
      color: AppColors.appBlack,
      fontSize: 16,
    ),
    errorStyle: const TextStyle(
      color: Colors.red,
      fontSize: 16,
    ),
    hintStyle: const TextStyle(
      color: AppColors.appBlack,
      fontSize: 14,
    ),
  ),
  primaryIconTheme: const IconThemeData(),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ButtonStyle(
      padding: MaterialStateProperty.all(
        const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      ),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          side: const BorderSide(color: AppColors.appPink, width: 3),
          borderRadius: BorderRadius.circular(4),
        ),
      ),
    ),
  ),
  buttonTheme: const ButtonThemeData(
    buttonColor: AppColors.appPink,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Colors.transparent),
      splashFactory: NoSplash.splashFactory,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      splashFactory: NoSplash.splashFactory,
      shadowColor:
          MaterialStateProperty.all(AppColors.appPink.withOpacity(0.1)),
      padding: MaterialStateProperty.all(
        const EdgeInsets.symmetric(
          horizontal: 72,
          vertical: 36,
        ),
      ),
      elevation: MaterialStateProperty.resolveWith(
        (states) => states.contains(MaterialState.disabled) ? 0 : 8,
      ),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      foregroundColor: MaterialStateProperty.all(AppColors.appBlack),
      backgroundColor: MaterialStateProperty.resolveWith((state) {
        if (state.contains(MaterialState.disabled)) {
          return AppColors.appPink.withOpacity(0.4);
        }
        return AppColors.appBlack;
      }),
    ),
  ),
  toggleableActiveColor: Colors.grey,
  textTheme: base.primaryTextTheme.copyWith(
    headline1: base.primaryTextTheme.headline1!.copyWith(
      color: AppColors.appPink,
      fontWeight: FontWeight.w600,
      fontSize: 28,
      letterSpacing: 0.04,
    ),
    headline2: base.primaryTextTheme.headline2!.copyWith(
      color: AppColors.appBlack,
      fontSize: 28,
    ),
    headline3: base.primaryTextTheme.headline3!.copyWith(
      color: AppColors.appBlack,
      fontSize: 24,
    ),
    headline4: base.primaryTextTheme.headline4!.copyWith(
      color: AppColors.appBlack,
      fontSize: 24,
    ),
    headline5: base.primaryTextTheme.headline5!.copyWith(
      color: Colors.black,
      fontWeight: FontWeight.w600,
      fontSize: 14,
    ),
    headline6: base.primaryTextTheme.headline6!.copyWith(
      color: AppColors.appBlack,
      fontWeight: FontWeight.w600,
      fontSize: 14,
    ),
    subtitle1: base.primaryTextTheme.subtitle1!.copyWith(
      color: Colors.grey,
      fontSize: 18,
      height: 1.25,
      letterSpacing: -0.2,
    ),
    subtitle2: base.primaryTextTheme.subtitle2!.copyWith(
      color: Colors.grey,
      fontSize: 18,
      height: 1.25,
      letterSpacing: -0.2,
    ),
    bodyText1: base.primaryTextTheme.bodyText1!.copyWith(
      color: AppColors.appBlack,
      fontSize: 16,
    ),
    bodyText2: base.primaryTextTheme.bodyText2!.copyWith(
      color: AppColors.appBlack,
      fontWeight: FontWeight.w400,
      fontSize: 20,
    ),
    caption: const TextStyle(
      color: AppColors.appBlack,
      fontSize: 14,
      height: 1.5,
    ),
    overline: const TextStyle(
      color: Colors.grey,
      fontSize: 10,
      height: 1.1,
    ),
    button: const TextStyle(
      color: AppColors.appPink,
      fontSize: 20,
    ),
  ),
);
