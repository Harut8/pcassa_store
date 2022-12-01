import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:pcassa/themes/app_colors.dart';
import '../constants/custom_icons.dart';
import 'custom_button.dart';

class PinCodeKeyboard2 extends StatelessWidget {
  PinCodeKeyboard2({
    Key? key,
    required this.onTap,
    this.padding,
    this.childAspectRatio,
    this.isActiveDone = true,
  }) : super(key: key);

  final Function(String) onTap;
  final EdgeInsets? padding;
  final double? childAspectRatio;
  final bool isActiveDone;
  var colorState = GetIt.I<AppColorobs>();
  @override
  Widget build(BuildContext context) {
    final actionsList = [
      '1',
      '2',
      '3',
      '4',
      '5',
      '6',
      '7',
      '8',
      '9',
      'Clear',
      '0',
      'done',
    ];

    return Observer(
      builder:(context,)=> GridView.count(
        padding:
            padding ?? const EdgeInsets.symmetric(horizontal: 36, vertical: 10),
        primary: false,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        childAspectRatio: childAspectRatio ?? 3/2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 3,
        children: [
          for (var i = 0; i < actionsList.length; i++)
            CustomButton(
              onTap: actionsList[i] == 'done' && !isActiveDone
                  ? null
                  : () {
                      onTap(
                        actionsList[i],
                      );
                    },
              fontSize: 30,
              minimumSize:Size(200, 100),
              backgroundColor: actionsList[i] == 'done'
                  ? colorState.isDark==false?AppColors.appGreen:AppColors.appDarkPink
                  : colorState.isDark==false?AppColors.appLightGreen:AppColors.appLightPink,
              child: actionsList[i] == 'done'
                  ? CustomIcons.left
                  : Text(
                      actionsList[i],
                    ),
            ),
        ],
      ),
    );
  }
}
