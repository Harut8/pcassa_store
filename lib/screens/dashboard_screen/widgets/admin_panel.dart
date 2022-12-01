import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../../../constants/custom_icons.dart';
import '../../../router.gr.dart';
import '../../../services.dart';
import '../../../store/services_state/services_state.dart';
import '../../../themes/app_colors.dart';
import '../../../utils/ui_utils.dart';
import '../../../widgets/custom_button.dart';

class AdminPanel extends StatefulWidget {
   AdminPanel({Key? key}) : super(key: key);

  @override
  State<AdminPanel> createState() => _AdminPanelState();
}

class _AdminPanelState extends State<AdminPanel> {
  var colorState = GetIt.I<AppColorobs>();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.appWhite,
        boxShadow: boxShadow,
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: InkWell(
                child: CustomIcons.managermenu,
                onTap: () => router.push(AdminRoute()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
