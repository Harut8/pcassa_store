import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../services.dart';
import '../themes/app_colors.dart';

class UiUtils {
  static Future<bool?> errorModal({
    required BuildContext context,
    required String errorCode,
  }) async {
    String? title;
    switch (errorCode) {
      case 'errors.wrongCode':
        title = 'errors.wrongCode';
        break;
      case '07':
        title = 'errors.07';
        break;
      case '09':
        title = 'errors.09';
        break;
      case '17':
        title = 'errors.17';
        break;
      case '40':
        title = 'errors.40';
        break;
      case '41':
        title = 'errors.41';
        break;
      case '42':
        title = 'errors.42';
        break;
      case '43':
        title = 'errors.43';
        break;
      case '44':
        title = 'errors.44';
        break;
      case '45':
        title = 'errors.45';
        break;
      case '46':
        title = 'errors.46';
        break;
      default:
      title = errorCode;
    }
    title ??= 'errors.any';
    //print(5);
    return showDialog<bool?>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: title != null
              ? Center(
                child: Text(
                    title.tr(),
                    style: Theme.of(context)
                        .textTheme
                        .headline1!
                        .copyWith(color: AppColors.appRed),
                    textAlign: TextAlign.center,
                  ),
              )
              : null,
          children: [
            TextButton(
              onPressed: router.pop,
              child: Text('done'.tr()),
            ),
          ],
        );
      },
    );
  }
}
