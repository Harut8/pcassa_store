enum OrderPageType {
  quickOrder,
  editOrder,
  createOrder,
}

extension OrderPageTranslation on OrderPageType {
  String get title {
    switch (this) {
      case OrderPageType.quickOrder:
        return 'orderPageTypes.quickCheck';
      case OrderPageType.createOrder:
        return 'orderPageTypes.createOrder';
      case OrderPageType.editOrder:
        return 'orderPageTypes.editOrder';
    }
  }
}
