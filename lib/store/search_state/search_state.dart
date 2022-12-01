import 'package:mobx/mobx.dart';
import 'package:pcassa/http/repositories/services_repository.dart';

import '../../models/product_model/product_model.dart';

part 'search_state.g.dart';

class SearchState = SearchStateBase with _$SearchState;

abstract class SearchStateBase with Store {
  List<ProductModel> products = <ProductModel>[];

  @observable
  ObservableList<ProductModel> searchProducts = ObservableList<ProductModel>();

  void onSearch(String value) async{
    if (value.trim().isEmpty) {
      searchProducts = products.asObservable();
      return;
    }
    // final filteredProduct = products.where(
    //   (product) => product.kod_tov != null && product.kod_tov!.contains(value),
    // );
    if(value.length>=3){
      products = await ServicesRepository.searchOnName(name: value);
      final filteredProduct = products.where(
      (product) => product.name != null && product.name.toString().toLowerCase().contains(value.toLowerCase()),);
      searchProducts = filteredProduct.toList().asObservable();
    }
    else{
      products.clear();
    }
  }
}
