import 'package:easy_localization/easy_localization.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';

import '../../models/info_model/info_model.dart';
import '../../models/user/user_model.dart';
import '../../storage/storage.dart';

part 'auth_state.g.dart';
DateFormat formats = DateFormat('HOUR24_MINUTE ');
class AuthState = AuthStateBase with _$AuthState;

abstract class AuthStateBase with Store {

  @observable
  InfoModel? info;

  @observable
  var time = DateTime.now();
  @observable
  var hour_ = DateFormat("hh:mm").format(DateTime.now());
  
  @observable
  UserModel? currentUser;

  @observable
  String? language;

  @observable
  List? quick_check;

  @observable
  Map dostupMap = {
    "discount_product":null,
    "change_price":null,
    "surcharge":null,
    "pay":null,
    "delete_item":null
  };
  @action
  changeTime(){
    time = DateTime.now();
  }
  @action
  void logOut() {
    
    StorageUtil.clearStorage();
    
    currentUser = null;
  }
  
}
