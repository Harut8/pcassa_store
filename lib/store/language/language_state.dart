import 'package:mobx/mobx.dart';

part 'language_state.g.dart';

class LanguageState = LanguageStateBase with _$LanguageState;

abstract class LanguageStateBase with Store {
  @observable
  String selectedLanguage = 'ru';
}
