// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basket_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$BasketState on BasketStateBase, Store {
  Computed<bool?>? _$hasModifiersComputed;

  @override
  bool? get hasModifiers =>
      (_$hasModifiersComputed ??= Computed<bool?>(() => super.hasModifiers,
              name: 'BasketStateBase.hasModifiers'))
          .value;
  Computed<bool>? _$basketIsEmptyComputed;

  @override
  bool get basketIsEmpty =>
      (_$basketIsEmptyComputed ??= Computed<bool>(() => super.basketIsEmpty,
              name: 'BasketStateBase.basketIsEmpty'))
          .value;
  Computed<double>? _$basketSumComputed;

  @override
  double get basketSum =>
      (_$basketSumComputed ??= Computed<double>(() => super.basketSum,
              name: 'BasketStateBase.basketSum'))
          .value;

  late final _$selectedBasketItemAtom =
      Atom(name: 'BasketStateBase.selectedBasketItem', context: context);

  @override
  BasketItemModel? get selectedBasketItem {
    _$selectedBasketItemAtom.reportRead();
    return super.selectedBasketItem;
  }

  @override
  set selectedBasketItem(BasketItemModel? value) {
    _$selectedBasketItemAtom.reportWrite(value, super.selectedBasketItem, () {
      super.selectedBasketItem = value;
    });
  }

  late final _$orderAtom =
      Atom(name: 'BasketStateBase.order', context: context);

  @override
  OrderModel? get order {
    _$orderAtom.reportRead();
    return super.order;
  }

  @override
  set order(OrderModel? value) {
    _$orderAtom.reportWrite(value, super.order, () {
      super.order = value;
    });
  }

  late final _$cashModelAtom =
      Atom(name: 'BasketStateBase.cashModel', context: context);

  @override
  Map<dynamic, dynamic>? get cashModel {
    _$cashModelAtom.reportRead();
    return super.cashModel;
  }

  @override
  set cashModel(Map<dynamic, dynamic>? value) {
    _$cashModelAtom.reportWrite(value, super.cashModel, () {
      super.cashModel = value;
    });
  }

  late final _$listOfOrdersAtom =
      Atom(name: 'BasketStateBase.listOfOrders', context: context);

  @override
  List<SavedOrderModel> get listOfOrders {
    _$listOfOrdersAtom.reportRead();
    return super.listOfOrders;
  }

  @override
  set listOfOrders(List<SavedOrderModel> value) {
    _$listOfOrdersAtom.reportWrite(value, super.listOfOrders, () {
      super.listOfOrders = value;
    });
  }

  late final _$saleModelInfoAtom =
      Atom(name: 'BasketStateBase.saleModelInfo', context: context);

  @override
  SalesModel? get saleModelInfo {
    _$saleModelInfoAtom.reportRead();
    return super.saleModelInfo;
  }

  @override
  set saleModelInfo(SalesModel? value) {
    _$saleModelInfoAtom.reportWrite(value, super.saleModelInfo, () {
      super.saleModelInfo = value;
    });
  }

  late final _$cassModelInfoAtom =
      Atom(name: 'BasketStateBase.cassModelInfo', context: context);

  @override
  CassModel? get cassModelInfo {
    _$cassModelInfoAtom.reportRead();
    return super.cassModelInfo;
  }

  @override
  set cassModelInfo(CassModel? value) {
    _$cassModelInfoAtom.reportWrite(value, super.cassModelInfo, () {
      super.cassModelInfo = value;
    });
  }

  late final _$createOrderAsyncAction =
      AsyncAction('BasketStateBase.createOrder', context: context);

  @override
  Future<OrderModel> createOrder({required OrderModel createdOrder}) {
    return _$createOrderAsyncAction
        .run(() => super.createOrder(createdOrder: createdOrder));
  }

  late final _$addIncasationAsyncAction =
      AsyncAction('BasketStateBase.addIncasation', context: context);

  @override
  Future addIncasation({required CashentryexitModel model}) {
    return _$addIncasationAsyncAction
        .run(() => super.addIncasation(model: model));
  }

  late final _$closeSmenaAsyncAction =
      AsyncAction('BasketStateBase.closeSmena', context: context);

  @override
  Future closeSmena({required String smenaId}) {
    return _$closeSmenaAsyncAction
        .run(() => super.closeSmena(smenaId: smenaId));
  }

  late final _$UpdateSavedOrderAsyncAction =
      AsyncAction('BasketStateBase.UpdateSavedOrder', context: context);

  @override
  Future<void> UpdateSavedOrder() {
    return _$UpdateSavedOrderAsyncAction.run(() => super.UpdateSavedOrder());
  }

  late final _$changeLanguageAsyncAction =
      AsyncAction('BasketStateBase.changeLanguage', context: context);

  @override
  Future changeLanguage(
      {required dynamic id, required dynamic language, required dynamic tip}) {
    return _$changeLanguageAsyncAction
        .run(() => super.changeLanguage(id: id, language: language, tip: tip));
  }

  late final _$getSalesProductAsyncAction =
      AsyncAction('BasketStateBase.getSalesProduct', context: context);

  @override
  Future<dynamic> getSalesProduct() {
    return _$getSalesProductAsyncAction.run(() => super.getSalesProduct());
  }

  late final _$onIncrementBasketItemAsyncAction =
      AsyncAction('BasketStateBase.onIncrementBasketItem', context: context);

  @override
  Future<void> onIncrementBasketItem(String code) {
    return _$onIncrementBasketItemAsyncAction
        .run(() => super.onIncrementBasketItem(code));
  }

  late final _$onChangePriceAsyncAction =
      AsyncAction('BasketStateBase.onChangePrice', context: context);

  @override
  Future<void> onChangePrice(String code, double price) {
    return _$onChangePriceAsyncAction
        .run(() => super.onChangePrice(code, price));
  }

  late final _$onProductBasketItemAsyncAction =
      AsyncAction('BasketStateBase.onProductBasketItem', context: context);

  @override
  Future<void> onProductBasketItem(String code, int quantity) {
    return _$onProductBasketItemAsyncAction
        .run(() => super.onProductBasketItem(code, quantity));
  }

  late final _$OnSavedAsyncAction =
      AsyncAction('BasketStateBase.OnSaved', context: context);

  @override
  Future<void> OnSaved() {
    return _$OnSavedAsyncAction.run(() => super.OnSaved());
  }

  late final _$onDecrementBasketItemAsyncAction =
      AsyncAction('BasketStateBase.onDecrementBasketItem', context: context);

  @override
  Future<void> onDecrementBasketItem(String code) {
    return _$onDecrementBasketItemAsyncAction
        .run(() => super.onDecrementBasketItem(code));
  }

  late final _$onDeleteItemAsyncAction =
      AsyncAction('BasketStateBase.onDeleteItem', context: context);

  @override
  Future<void> onDeleteItem({required dynamic id}) {
    return _$onDeleteItemAsyncAction.run(() => super.onDeleteItem(id: id));
  }

  late final _$addDiscountToBasketAsyncAction =
      AsyncAction('BasketStateBase.addDiscountToBasket', context: context);

  @override
  Future<void> addDiscountToBasket({required dynamic id}) {
    return _$addDiscountToBasketAsyncAction
        .run(() => super.addDiscountToBasket(id: id));
  }

  late final _$onAddToBasketAsyncAction =
      AsyncAction('BasketStateBase.onAddToBasket', context: context);

  @override
  Future<void> onAddToBasket(ProductModel product) {
    return _$onAddToBasketAsyncAction.run(() => super.onAddToBasket(product));
  }

  @override
  String toString() {
    return '''
selectedBasketItem: ${selectedBasketItem},
order: ${order},
cashModel: ${cashModel},
listOfOrders: ${listOfOrders},
saleModelInfo: ${saleModelInfo},
cassModelInfo: ${cassModelInfo},
hasModifiers: ${hasModifiers},
basketIsEmpty: ${basketIsEmpty},
basketSum: ${basketSum}
    ''';
  }
}
