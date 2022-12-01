
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';

import '../../http/repositories/auth_repository.dart';
import '../auth/auth_state.dart';

part 'sign_in_state.g.dart';

class SignInState = SignInStateBase with _$SignInState;

abstract class SignInStateBase with Store {
  final authState = GetIt.I<AuthState>();

  @observable
  String code = '';

  Future<void> signIn() async {
    final res = await AuthRepository.signIn(code: code);
    authState.currentUser = res;
    authState.language = res.language;
    //print("############## ${res.dostup.runtimeType}");
    if(!res.dostup.entries.isEmpty){
      authState.quick_check = res.dostup["quick_check"];
    if (authState.quick_check!=null || authState.quick_check!.length!=0){
      List dostup = authState.quick_check!;
      //print(dostup);
      for(var i in dostup){
        //print(i.runtimeType);
        authState.dostupMap[i] = i;
      }
    }
    }
    
    //print(authState.dostupMap);
    //print(res.dostup["quick_check"]);
    // await StorageUtil.saveApiKeyUser();
  }
}
