// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LanguageState on LanguageStateBase, Store {
  late final _$selectedLanguageAtom =
      Atom(name: 'LanguageStateBase.selectedLanguage', context: context);

  @override
  String get selectedLanguage {
    _$selectedLanguageAtom.reportRead();
    return super.selectedLanguage;
  }

  @override
  set selectedLanguage(String value) {
    _$selectedLanguageAtom.reportWrite(value, super.selectedLanguage, () {
      super.selectedLanguage = value;
    });
  }

  @override
  String toString() {
    return '''
selectedLanguage: ${selectedLanguage}
    ''';
  }
}
