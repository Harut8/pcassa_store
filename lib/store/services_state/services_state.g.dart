// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'services_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ServicesState on ServicesStateBase, Store {
  late final _$selectedMainCategoryIdAtom =
      Atom(name: 'ServicesStateBase.selectedMainCategoryId', context: context);

  @override
  String get selectedMainCategoryId {
    _$selectedMainCategoryIdAtom.reportRead();
    return super.selectedMainCategoryId;
  }

  @override
  set selectedMainCategoryId(String value) {
    _$selectedMainCategoryIdAtom
        .reportWrite(value, super.selectedMainCategoryId, () {
      super.selectedMainCategoryId = value;
    });
  }

  late final _$selectedSubCategoryAtom =
      Atom(name: 'ServicesStateBase.selectedSubCategory', context: context);

  @override
  CategoryModel? get selectedSubCategory {
    _$selectedSubCategoryAtom.reportRead();
    return super.selectedSubCategory;
  }

  @override
  set selectedSubCategory(CategoryModel? value) {
    _$selectedSubCategoryAtom.reportWrite(value, super.selectedSubCategory, () {
      super.selectedSubCategory = value;
    });
  }

  late final _$isDarkModeAtom =
      Atom(name: 'ServicesStateBase.isDarkMode', context: context);

  @override
  bool get isDarkMode {
    _$isDarkModeAtom.reportRead();
    return super.isDarkMode;
  }

  @override
  set isDarkMode(bool value) {
    _$isDarkModeAtom.reportWrite(value, super.isDarkMode, () {
      super.isDarkMode = value;
    });
  }

  late final _$categoriesAtom =
      Atom(name: 'ServicesStateBase.categories', context: context);

  @override
  ObservableList<CategoryModel> get categories {
    _$categoriesAtom.reportRead();
    return super.categories;
  }

  @override
  set categories(ObservableList<CategoryModel> value) {
    _$categoriesAtom.reportWrite(value, super.categories, () {
      super.categories = value;
    });
  }

  late final _$productsAtom =
      Atom(name: 'ServicesStateBase.products', context: context);

  @override
  ObservableList<ProductModel> get products {
    _$productsAtom.reportRead();
    return super.products;
  }

  @override
  set products(ObservableList<ProductModel> value) {
    _$productsAtom.reportWrite(value, super.products, () {
      super.products = value;
    });
  }

  late final _$addonsAtom =
      Atom(name: 'ServicesStateBase.addons', context: context);

  @override
  ObservableList<DiscountModel> get addons {
    _$addonsAtom.reportRead();
    return super.addons;
  }

  @override
  set addons(ObservableList<DiscountModel> value) {
    _$addonsAtom.reportWrite(value, super.addons, () {
      super.addons = value;
    });
  }

  late final _$modifiersGroupsAtom =
      Atom(name: 'ServicesStateBase.modifiersGroups', context: context);

  @override
  ModifiersGroupModel get modifiersGroups {
    _$modifiersGroupsAtom.reportRead();
    return super.modifiersGroups;
  }

  @override
  set modifiersGroups(ModifiersGroupModel value) {
    _$modifiersGroupsAtom.reportWrite(value, super.modifiersGroups, () {
      super.modifiersGroups = value;
    });
  }

  late final _$categoriesFirstLevelAtom =
      Atom(name: 'ServicesStateBase.categoriesFirstLevel', context: context);

  @override
  ObservableList<CategoryModel> get categoriesFirstLevel {
    _$categoriesFirstLevelAtom.reportRead();
    return super.categoriesFirstLevel;
  }

  @override
  set categoriesFirstLevel(ObservableList<CategoryModel> value) {
    _$categoriesFirstLevelAtom.reportWrite(value, super.categoriesFirstLevel,
        () {
      super.categoriesFirstLevel = value;
    });
  }

  late final _$searchMenuItemsAtom =
      Atom(name: 'ServicesStateBase.searchMenuItems', context: context);

  @override
  ObservableList<MenuAbstractModel> get searchMenuItems {
    _$searchMenuItemsAtom.reportRead();
    return super.searchMenuItems;
  }

  @override
  set searchMenuItems(ObservableList<MenuAbstractModel> value) {
    _$searchMenuItemsAtom.reportWrite(value, super.searchMenuItems, () {
      super.searchMenuItems = value;
    });
  }

  late final _$getMenuAsyncAction =
      AsyncAction('ServicesStateBase.getMenu', context: context);

  @override
  Future<void> getMenu() {
    return _$getMenuAsyncAction.run(() => super.getMenu());
  }

  late final _$getDiscountAsyncAction =
      AsyncAction('ServicesStateBase.getDiscount', context: context);

  @override
  Future<void> getDiscount() {
    return _$getDiscountAsyncAction.run(() => super.getDiscount());
  }

  late final _$ServicesStateBaseActionController =
      ActionController(name: 'ServicesStateBase', context: context);

  @override
  void onFilterCategory(CategoryModel category) {
    final _$actionInfo = _$ServicesStateBaseActionController.startAction(
        name: 'ServicesStateBase.onFilterCategory');
    try {
      return super.onFilterCategory(category);
    } finally {
      _$ServicesStateBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedMainCategoryId: ${selectedMainCategoryId},
selectedSubCategory: ${selectedSubCategory},
isDarkMode: ${isDarkMode},
categories: ${categories},
products: ${products},
addons: ${addons},
modifiersGroups: ${modifiersGroups},
categoriesFirstLevel: ${categoriesFirstLevel},
searchMenuItems: ${searchMenuItems}
    ''';
  }
}
