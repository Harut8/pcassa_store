import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../constants/assets.dart';
import '../themes/app_colors.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({
    Key? key,
    this.path,
  }) : super(key: key);

  final String? path;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: AppColors.appGreen.withOpacity(0.3),
      child: Center(
        child: Lottie.asset(
          path ?? Assets.loadingAnimation,
          width: 240,
        ),
      ),
    );
  }
}
