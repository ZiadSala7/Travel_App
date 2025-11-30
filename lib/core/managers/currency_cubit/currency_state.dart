import 'package:equatable/equatable.dart';

class CurrencyState extends Equatable {
  final String currencyCode;
  final String currencySymbol;

  const CurrencyState({
    required this.currencyCode,
    required this.currencySymbol,
  });

  factory CurrencyState.initial() =>
      const CurrencyState(currencyCode: "USD", currencySymbol: "\$");

  CurrencyState copyWith({String? currencyCode, String? currencySymbol}) {
    return CurrencyState(
      currencyCode: currencyCode ?? this.currencyCode,
      currencySymbol: currencySymbol ?? this.currencySymbol,
    );
  }

  @override
  List<Object?> get props => [currencyCode, currencySymbol];
}
