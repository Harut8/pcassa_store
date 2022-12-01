import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';

import '../basket_state/basket_state.dart';

part 'order_settings_state.g.dart';

class OrderSettingsState = OrderSettingsStateBase with _$OrderSettingsState;

abstract class OrderSettingsStateBase with Store {
  final basketState = GetIt.I<BasketState>();
}
