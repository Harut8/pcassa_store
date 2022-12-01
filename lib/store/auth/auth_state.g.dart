// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AuthState on AuthStateBase, Store {
  late final _$infoAtom = Atom(name: 'AuthStateBase.info', context: context);

  @override
  InfoModel? get info {
    _$infoAtom.reportRead();
    return super.info;
  }

  @override
  set info(InfoModel? value) {
    _$infoAtom.reportWrite(value, super.info, () {
      super.info = value;
    });
  }

  late final _$timeAtom = Atom(name: 'AuthStateBase.time', context: context);

  @override
  DateTime get time {
    _$timeAtom.reportRead();
    return super.time;
  }

  @override
  set time(DateTime value) {
    _$timeAtom.reportWrite(value, super.time, () {
      super.time = value;
    });
  }

  late final _$hour_Atom = Atom(name: 'AuthStateBase.hour_', context: context);

  @override
  String get hour_ {
    _$hour_Atom.reportRead();
    return super.hour_;
  }

  @override
  set hour_(String value) {
    _$hour_Atom.reportWrite(value, super.hour_, () {
      super.hour_ = value;
    });
  }

  late final _$currentUserAtom =
      Atom(name: 'AuthStateBase.currentUser', context: context);

  @override
  UserModel? get currentUser {
    _$currentUserAtom.reportRead();
    return super.currentUser;
  }

  @override
  set currentUser(UserModel? value) {
    _$currentUserAtom.reportWrite(value, super.currentUser, () {
      super.currentUser = value;
    });
  }

  late final _$languageAtom =
      Atom(name: 'AuthStateBase.language', context: context);

  @override
  String? get language {
    _$languageAtom.reportRead();
    return super.language;
  }

  @override
  set language(String? value) {
    _$languageAtom.reportWrite(value, super.language, () {
      super.language = value;
    });
  }

  late final _$quick_checkAtom =
      Atom(name: 'AuthStateBase.quick_check', context: context);

  @override
  List<dynamic>? get quick_check {
    _$quick_checkAtom.reportRead();
    return super.quick_check;
  }

  @override
  set quick_check(List<dynamic>? value) {
    _$quick_checkAtom.reportWrite(value, super.quick_check, () {
      super.quick_check = value;
    });
  }

  late final _$dostupMapAtom =
      Atom(name: 'AuthStateBase.dostupMap', context: context);

  @override
  Map<dynamic, dynamic> get dostupMap {
    _$dostupMapAtom.reportRead();
    return super.dostupMap;
  }

  @override
  set dostupMap(Map<dynamic, dynamic> value) {
    _$dostupMapAtom.reportWrite(value, super.dostupMap, () {
      super.dostupMap = value;
    });
  }

  late final _$AuthStateBaseActionController =
      ActionController(name: 'AuthStateBase', context: context);

  @override
  dynamic changeTime() {
    final _$actionInfo = _$AuthStateBaseActionController.startAction(
        name: 'AuthStateBase.changeTime');
    try {
      return super.changeTime();
    } finally {
      _$AuthStateBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void logOut() {
    final _$actionInfo = _$AuthStateBaseActionController.startAction(
        name: 'AuthStateBase.logOut');
    try {
      return super.logOut();
    } finally {
      _$AuthStateBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
info: ${info},
time: ${time},
hour_: ${hour_},
currentUser: ${currentUser},
language: ${language},
quick_check: ${quick_check},
dostupMap: ${dostupMap}
    ''';
  }
}
