// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PaymentState on PaymentStateBase, Store {
  Computed<double>? _$getSurrenderComputed;

  @override
  double get getSurrender =>
      (_$getSurrenderComputed ??= Computed<double>(() => super.getSurrender,
              name: 'PaymentStateBase.getSurrender'))
          .value;

  late final _$typedValueAtom =
      Atom(name: 'PaymentStateBase.typedValue', context: context);

  @override
  String get typedValue {
    _$typedValueAtom.reportRead();
    return super.typedValue;
  }

  @override
  set typedValue(String value) {
    _$typedValueAtom.reportWrite(value, super.typedValue, () {
      super.typedValue = value;
    });
  }

  late final _$isPayedAtom =
      Atom(name: 'PaymentStateBase.isPayed', context: context);

  @override
  bool? get isPayed {
    _$isPayedAtom.reportRead();
    return super.isPayed;
  }

  @override
  set isPayed(bool? value) {
    _$isPayedAtom.reportWrite(value, super.isPayed, () {
      super.isPayed = value;
    });
  }

  late final _$selectedCurrencyAtom =
      Atom(name: 'PaymentStateBase.selectedCurrency', context: context);

  @override
  CurrencyModel? get selectedCurrency {
    _$selectedCurrencyAtom.reportRead();
    return super.selectedCurrency;
  }

  @override
  set selectedCurrency(CurrencyModel? value) {
    _$selectedCurrencyAtom.reportWrite(value, super.selectedCurrency, () {
      super.selectedCurrency = value;
    });
  }

  late final _$currenciesAtom =
      Atom(name: 'PaymentStateBase.currencies', context: context);

  @override
  ObservableList<CurrencyModel> get currencies {
    _$currenciesAtom.reportRead();
    return super.currencies;
  }

  @override
  set currencies(ObservableList<CurrencyModel> value) {
    _$currenciesAtom.reportWrite(value, super.currencies, () {
      super.currencies = value;
    });
  }

  late final _$getCurrenciesAsyncAction =
      AsyncAction('PaymentStateBase.getCurrencies', context: context);

  @override
  Future<void> getCurrencies() {
    return _$getCurrenciesAsyncAction.run(() => super.getCurrencies());
  }

  @override
  String toString() {
    return '''
typedValue: ${typedValue},
isPayed: ${isPayed},
selectedCurrency: ${selectedCurrency},
currencies: ${currencies},
getSurrender: ${getSurrender}
    ''';
  }
}
