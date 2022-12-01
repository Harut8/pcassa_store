import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
//import 'package:pcassa/models/saved_orders/saved_orders.dart';

import '../../http/repositories/services_repository.dart';
import '../../models/currency_model/currency_model.dart';
import '../../models/payment_model/payment_model.dart';
import '../basket_state/basket_state.dart';
import '../loading/loading_state.dart';

part 'payment_state.g.dart';

class PaymentState = PaymentStateBase with _$PaymentState;

abstract class PaymentStateBase with Store {
  
  final paymentLoading = LoadingState();
  final basketState = GetIt.I<BasketState>();
  @observable
  String typedValue = '';

  @observable
  bool? isPayed;

  @observable
  CurrencyModel? selectedCurrency;

  @observable
  ObservableList<CurrencyModel> currencies = ObservableList<CurrencyModel>();

  @action
  Future<void> getCurrencies() async {
    final result = await ServicesRepository.getCurrencies();
    currencies = result.asObservable();
  }

  @computed
  double get getSurrender =>
      (typedValue.trim() != '' ? double.parse(typedValue) : 0.0) -
      basketState.basketSum;

  Future<void> paymentOrder() async {
    await ServicesRepository.paymentOrder(
      paymentOrder: PaymentModel(
        tip: selectedCurrency!.tip,
        cod: selectedCurrency!.cod,
        amount: basketState.basketSum,
        orderid: basketState.order!.orderinfo.orderid,
      ),
    );
  }
}
