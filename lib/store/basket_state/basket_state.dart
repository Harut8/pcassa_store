// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:pcassa/models/cashentryexit_model/cashentryexit_model.dart';
import 'package:pcassa/models/langauge_model/language_model.dart';
import 'package:pcassa/models/order_model/order_model.dart';
import 'package:pcassa/models/sales_model/sales_model.dart';
import 'package:pcassa/models/savedorder_model/savedorder_model.dart';

import '../../http/repositories/services_repository.dart';
import '../../models/basket_item_model/basket_item_model.dart';
import '../../models/cass_model/cass_model.dart';
import '../../models/product_model/product_model.dart';
import '../services_state/services_state.dart';

part 'basket_state.g.dart';

class BasketState = BasketStateBase with _$BasketState;

abstract class BasketStateBase with Store {
  final servicesState = GetIt.I<ServicesState>();
  
  List<BasketItemModel> basket = <BasketItemModel>[];

  @observable
  BasketItemModel? selectedBasketItem;

  @observable
  OrderModel? order;
  @observable
  Map? cashModel;
  @observable
  List<SavedOrderModel> listOfOrders = [];
  @observable
  SalesModel? saleModelInfo;
  @observable
  CassModel? cassModelInfo;

  @action
  Future<OrderModel> createOrder({
    required OrderModel createdOrder,
  }) async {
    return ServicesRepository.orderInfo(
      order: createdOrder,
    );
  }

  @action
  addIncasation({
    required CashentryexitModel model,
  }) async {
    await ServicesRepository.addIncasation (
      model: model
    );
  }
  @action
   closeSmena({
    required String smenaId
  }) async {
    final res = ServicesRepository.closeSmena (
      smenaId: smenaId
    );
    return res;
  }

  @action
  Future<void> UpdateSavedOrder() async {
    final changedOrder = order!.copyWith(basket: basket);
    final result = await ServicesRepository.savedorder(
      order: changedOrder,
    );
    order = result;
    basket = order!.basket;
  }
  @action
  changeLanguage({required id, required language, required tip}) async {
    final result = await ServicesRepository.changeLanguage(
      model: LanguageModel(id: id, language: language, tip: tip)
    );
    //print(1);
    return result;
  }
  @action
  Future getSalesProduct() async {
    final result = await ServicesRepository.getSalesProduct();
   //print(result);
    saleModelInfo = result[0];
  }
  Future getViruchka() async {
    //sa cash na 
    final result = await ServicesRepository.getViruchkaModel();
    cassModelInfo = result[0];
    //print(result);
    
  }
  Future getViruchkaI() async {
    final result = await ServicesRepository.getViruchka();
    cashModel = result;
    //print(result);
    
  }
  @action
  Future<void> onIncrementBasketItem(String code) async {
    var thisBasket;
    if (basketIsEmpty != true) {
      for (var i = 0; i < basket.length; i++) {
        if (basket[i].code == code) {
          basket[i] = basket[i].copyWith(
            quantity: basket[i].quantity + 1,
          );
          thisBasket = basket[i];
        }
      }
    }
    //print(basket) ;
    final changedOrder = order!.copyWith(basket: [thisBasket]);
    final result = await ServicesRepository.orderInfo(
      order: changedOrder,
    );
    order = result;
    basket = order!.basket;
    selectedBasketItem = basket.firstWhere((item) => item.code == code);
  }
  // @action
  @action
  Future<void> onChangePrice(String code, double price) async {
    var thisBasket;
    for (var i = 0; i < basket.length; i++) {
      if (basket[i].code == code) {
        basket[i] = basket[i].copyWith(
          saleprice: price,
        );
        thisBasket = basket[i];
      }
    }
    if(thisBasket!=null){
      final changedOrder = order!.copyWith(basket: [thisBasket]);
      final result = await ServicesRepository.orderInfo(
      order: changedOrder,
      );
      order = result;
      basket = order!.basket;
      selectedBasketItem = basket.firstWhere((item) => item.code == code);
    }
    
  }
   @action
  Future<void> onProductBasketItem(String code,int quantity) async {
    var thisBasket;
    if (basketIsEmpty != true) {
      for (var i = 0; i < basket.length; i++) {
        if (basket[i].code == code) {
          basket[i] = basket[i].copyWith(
            quantity: quantity,
          );
          thisBasket = basket[i];
        }
      }
    } 
    final changedOrder = order!.copyWith(basket: [thisBasket]);
    final result = await ServicesRepository.orderInfo(
      order: changedOrder,
    );
    order = result;
    basket = order!.basket;
    //print(basket);
    selectedBasketItem = basket.firstWhere((item) => item.code == code);
  }

  @action
  Future<void> OnSaved() async {
    await UpdateSavedOrder();
  }

  @action
  Future<void> onDecrementBasketItem(String code) async {
    var thisBasket;
    for (var i = 0; i < basket.length; i++) {
      if (basket[i].code == code && basket[i].quantity >=2) {
        basket[i] = basket[i].copyWith(
          quantity: basket[i].quantity - 1,
        );
        thisBasket = basket[i];
      }
    }
    if(thisBasket!=null){
      final changedOrder = order!.copyWith(basket: [thisBasket]);
      final result = await ServicesRepository.orderInfo(
      order: changedOrder,
      );
      order = result;
      basket = order!.basket;
      selectedBasketItem = basket.firstWhere((item) => item.code == code);
    }
    
  }

  @action
  Future<void> onDeleteItem({required dynamic id}) async {
    //basket.remove(selectedBasketItem!);
    //print(selectedBasketItem);
    final getNewOrder = await ServicesRepository.itemDelete(
      orderId:order!.orderinfo.orderid ,
      id:id);
      //print(getNewOrder.basket);
    basket = getNewOrder.basket;
    order = getNewOrder;
    //print(selectedBasketItem);
    //print(basket);
    if (basket.isNotEmpty) {
      selectedBasketItem = basket.last;
    } else {
      selectedBasketItem = null;
    }
  }
 
  @action
  Future<void> addDiscountToBasket({required id}) async {
    final basketItemModel = BasketItemModel(
      id: id,
      code: '',
      name: '',
      saleprice: 0,
      recorddate: DateTime.now(),
      //guid_mod: [],
    );
    final changedOrder = order!.copyWith(basket: [basketItemModel]);
    final result = await ServicesRepository.orderInfo(
      order: changedOrder,
    );
    order = result;
    basket = order!.basket;
  }

  @action
  Future<void> onAddToBasket(ProductModel product) async {
    //print(product);
    for (var i = 0; i < basket.length; i++) {
      if (basket[i].code == product.kod_tov) {
        await onIncrementBasketItem(product.kod_tov!);
        selectedBasketItem = basket[i];
        return;
      }
    }
    final basketItemModel = BasketItemModel(
      id: 0,
      code: product.kod_tov!,
      name: product.name!,
      edizm: product.ed_izm,
      adg: product.adg,
      kname: product.kname,
      deletepersonid: 0,
      saleprice: product.price_o_r,
      recorddate: DateTime.now(),
      //guid_mod: product.guid_mod,
    );
    //print(basketItemModel);
    //basket.add(basketItemModel);
    final changedOrder = order!.copyWith(basket: [basketItemModel]);
    final result = await ServicesRepository.orderInfo(
      order: changedOrder,
    );
    order = result;
    basket = order!.basket;
    selectedBasketItem = basket.firstWhere((item) => item.code == product.kod_tov);
    //print(order!.basket);
    //print(hasModifiers);
  }
  Future<void> onCopyToBasket(BasketItemModel? product) async {
    final basketItemModel = BasketItemModel(
      id: 0,
      code: product!.code ,
      name: product.name,
      saleprice: product.saleprice ,
      recorddate: DateTime.now(),
      //guid_mod: product.guid_mod,
    );
    //print(basketItemModel);
    //basket.add(basketItemModel);
    // final changedOrder = order!.copyWith(basket: [basketItemModel]);
    // final result = await ServicesRepository.orderInfo(
    //   order: changedOrder,
    // );
    // order = result;
    // basket = order!.basket;
    // selectedBasketItem = basket.firstWhere((item) => item.code == product.code);
    //print(order!.basket);
    //print(hasModifiers);
  }

  @computed
  bool? get hasModifiers => [].isNotEmpty;

  @computed
  bool get basketIsEmpty => order != null && order!.basket.isEmpty;

  @computed
  double get basketSum {
    // var sum = 0.0;
    // for (var i = 0; i < order!.basket.length; i++) {
    //   sum += basket[i].saleprice * basket[i].quantity;
    // }
    //print("order");
    return order!.orderinfo.saleprice.toDouble() ;
  }
}
