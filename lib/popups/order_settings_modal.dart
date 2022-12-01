import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../constants/order_settings_type.dart';
import '../services.dart';
import '../widgets/custom_button.dart';
import 'widgets/modal_header.dart';

Future<OrderSettingsType?> onShowOrderSettingsModal({
  required BuildContext context,
  required String title,
}) async {
  return showGeneralDialog(
    barrierLabel: '',
    barrierDismissible: true,
    context: context,
    transitionBuilder: (context, anim1, anim2, child) {
      return SlideTransition(
        position: Tween(begin: const Offset(0, 1), end: const Offset(0, 0))
            .animate(anim1),
        child: child,
      );
    },
    pageBuilder: (context, anim1, anim2) {
      return SimpleDialog(
        titlePadding: EdgeInsets.zero,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
        title: ModalHeader(title: title),
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: Column(
                children: OrderSettingsType.values
                    .map(
                      (type) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 6),
                        child: CustomButton(
                          onTap: () {
                            router.pop(type);
                          },
                          minimumSize: const Size(380, 100),
                          child: Text(type.title.tr()),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ],
      );
    },
  );
}
