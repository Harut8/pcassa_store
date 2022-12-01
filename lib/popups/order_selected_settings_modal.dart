import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../constants/order_settings_type.dart';
import '../store/basket_state/basket_state.dart';
import '../widgets/basket/basket_item.dart';
import 'widgets/modal_header.dart';

Future<void> orderSelectedSettingsModal({
  required BuildContext context,
  required OrderSettingsType type,
}) async {
  final basketState = GetIt.I<BasketState>();
  await showDialog(
    context: context,
    builder: (BuildContext context) {
      return SimpleDialog(
        titlePadding: EdgeInsets.zero,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
        title: ModalHeader(title: type.title.tr()),
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  flex: 3,
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(vertical: 7),
                    child: Observer(
                      builder: (_) => Column(
                        children: basketState.basket
                            .map(
                              (item) => BasketItem(
                                item: item,
                                onTap: () {},
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
              ],
            ),
          ),
        ],
      );
    },
  );
}
