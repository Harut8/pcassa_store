import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../constants/custom_icons.dart';
import '../../services.dart';
import '../../themes/app_colors.dart';

class StopListModalHeader extends StatelessWidget {
   StopListModalHeader({
    Key? key,
    required this.title,
    this.width,
    this.hasBorder = true,
  }) : super(key: key);

  final String title;
  final double? width;
  final bool hasBorder;
  var colorState = GetIt.I<AppColorobs>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
      width: width ?? MediaQuery.of(context).size.width * 0.25,
      decoration: BoxDecoration(
        color: colorState.isDark==false?
                                                  AppColors.appRed:
                                                  AppColors.appDarkPink,
        borderRadius: hasBorder
            ? const BorderRadius.only(
                topRight: Radius.circular(4),
                topLeft: Radius.circular(4),
              )
            : null,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headline3!.copyWith(
                                    color: AppColors.appWhite
                                  ),
            textAlign: TextAlign.center,
          ),
          InkWell(
            onTap: router.pop,
            child: CustomIcons.closing,
          ),
        ],
      ),
    );
  }
}
