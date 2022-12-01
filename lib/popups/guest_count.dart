import 'package:flutter/material.dart';

import '../models/table_model/table_model.dart';
import '../services.dart';
import '../themes/app_colors.dart';
import '../widgets/pin_code_keyboard.dart';
import 'widgets/modal_header.dart';

Future<String?> onShowGuestCountModal({
  required BuildContext context,
  required TableModel table,

  required String title,
}) async {
  final focusNode = FocusNode();
  final controller = TextEditingController(text: '1');
  final width = MediaQuery.of(context).size.width;
  final height = MediaQuery.of(context).size.height;

  void onDone() {
    if (controller.text.trim().isNotEmpty) {
      router.pop(controller.text);
    }
  }

  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return GestureDetector(
        onTap: focusNode.requestFocus,
        child: SimpleDialog(
          titlePadding: EdgeInsets.zero,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
          ),
          title: ModalHeader(title: title),
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 60,
                  child: TextField(
                    controller: controller,
                    focusNode: focusNode,
                    autofocus: true,
                    onEditingComplete: onDone,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline1!.copyWith(
                          color: AppColors.appBlack,
                        ),
                  ),
                ),
                SizedBox(
                  height: height * 0.4,
                  width: width * 0.25,
                  child: PinCodeKeyboard(
                    onTap: (value) {
                      focusNode.requestFocus();
                      switch (value) {
                        case 'Clear':
                          controller.clear();
                          break;
                        case 'done':
                          onDone();
                          break;
                        default:
                          {
                            controller.text = controller.text + value;
                          }
                      }
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    },
  );
}
