import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';

import '../../http/repositories/services_repository.dart';
import '../../models/stoplist_model/stoplistmodel.dart';

part 'stoplist.g.dart';
class StopListState = StopListStateBase with _$StopListState;
abstract class StopListStateBase with Store{

  @observable
  List<StopListModel> stopList = [];

  @observable
  List<StopListModel> searchStopList = [];
  
  @observable
  Map<String,dynamic> mapStopList = {};
  
  void onSearch(String value) {
    //setItems();
    if (value.trim().isEmpty) {
      searchStopList = stopList;
      return;
    }
    // final filteredProduct = products.where(
    //   (product) => product.kod_tov != null && product.kod_tov!.contains(value),
    // );
    final filteredProduct = stopList.where(
      (product) => product.name != null && product.name.toString().toLowerCase().contains(value.toLowerCase()),
    );
    //print(products);
    searchStopList= filteredProduct.toList();
  }

}