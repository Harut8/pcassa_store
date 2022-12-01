import 'package:mobx/mobx.dart';

import '../../http/repositories/services_repository.dart';
import '../../models/category_model/category_model.dart';
import '../../models/discount_model/discount_model.dart';
import '../../models/menu_abstract_model/menu_abstract_model.dart';
import '../../models/modifiers_group_model/modifiers_group_model.dart';
import '../../models/product_model/product_model.dart';

part 'services_state.g.dart';

class ServicesState = ServicesStateBase with _$ServicesState;

abstract class ServicesStateBase with Store {
  @observable
  String selectedMainCategoryId = '';

  @observable
  CategoryModel? selectedSubCategory;

  @observable
  bool isDarkMode = false;

  @observable
  ObservableList<CategoryModel> categories = ObservableList<CategoryModel>();

  @observable
  ObservableList<ProductModel> products = ObservableList<ProductModel>();



  @observable
  ObservableList<DiscountModel> addons = ObservableList<DiscountModel>();

  @observable
  ModifiersGroupModel modifiersGroups = ModifiersGroupModel(
    main: [],
    optional: [],
  );

  @observable
  ObservableList<CategoryModel> categoriesFirstLevel =
      ObservableList<CategoryModel>();

  @observable
  ObservableList<MenuAbstractModel> searchMenuItems =
      ObservableList<MenuAbstractModel>();

  @action
  Future<void> getMenu() async {
    final result = await ServicesRepository.getMenu();
    products = result.menu.asObservable();
    categories = result.category.asObservable();
    modifiersGroups = result.modifield;
  }

  @action
  Future<void> getDiscount() async {
    final result = await ServicesRepository.getDiscount();
    addons = result.asObservable();
  }

  @action
  void onFilterCategory(CategoryModel category) {
    final categoryGuid = category.guid;
    if (category.isroot == 0) {
      selectedSubCategory = null;
      selectedMainCategoryId = selectedMainCategoryId;
    } else {
      selectedSubCategory = category;
    }

    final filterList = <MenuAbstractModel>[];
    final filteredSubCategories = categories
        .where((category) => category.parentguid == categoryGuid)
        .toList();
    filterList.addAll(filteredSubCategories);

    final filteredProducts =
        products.where((product) => categoryGuid == product.guid).toList();
    filterList.addAll(filteredProducts);
    searchMenuItems = filterList.asObservable();
  }
}
