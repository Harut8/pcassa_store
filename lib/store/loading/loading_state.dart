import 'package:mobx/mobx.dart';

part 'loading_state.g.dart';

class LoadingState = LoadingStateBase with _$LoadingState;

abstract class LoadingStateBase with Store {
  @observable
  bool isLoading = false;

  @action
  void startLoading() {
    isLoading = true;
  }

  @action
  void stopLoading() {
    isLoading = false;
  }
}
