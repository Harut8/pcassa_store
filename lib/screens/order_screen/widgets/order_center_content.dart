import 'package:flutter/material.dart';

import 'actions_part.dart';
import 'first_level_menu.dart';

class OrderCenterContent extends StatelessWidget {
  const OrderCenterContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: ActionsPart()),
        // Expanded(
        //   //flex: 1,
        //   child: MenuItems(),
        // ),
      ],
    );
  }
}
