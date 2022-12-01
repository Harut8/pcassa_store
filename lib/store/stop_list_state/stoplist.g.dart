// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stoplist.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$StopListState on StopListStateBase, Store {
  late final _$stopListAtom =
      Atom(name: 'StopListStateBase.stopList', context: context);

  @override
  List<StopListModel> get stopList {
    _$stopListAtom.reportRead();
    return super.stopList;
  }

  @override
  set stopList(List<StopListModel> value) {
    _$stopListAtom.reportWrite(value, super.stopList, () {
      super.stopList = value;
    });
  }

  late final _$searchStopListAtom =
      Atom(name: 'StopListStateBase.searchStopList', context: context);

  @override
  List<StopListModel> get searchStopList {
    _$searchStopListAtom.reportRead();
    return super.searchStopList;
  }

  @override
  set searchStopList(List<StopListModel> value) {
    _$searchStopListAtom.reportWrite(value, super.searchStopList, () {
      super.searchStopList = value;
    });
  }

  late final _$mapStopListAtom =
      Atom(name: 'StopListStateBase.mapStopList', context: context);

  @override
  Map<String, dynamic> get mapStopList {
    _$mapStopListAtom.reportRead();
    return super.mapStopList;
  }

  @override
  set mapStopList(Map<String, dynamic> value) {
    _$mapStopListAtom.reportWrite(value, super.mapStopList, () {
      super.mapStopList = value;
    });
  }

  @override
  String toString() {
    return '''
stopList: ${stopList},
searchStopList: ${searchStopList},
mapStopList: ${mapStopList}
    ''';
  }
}
