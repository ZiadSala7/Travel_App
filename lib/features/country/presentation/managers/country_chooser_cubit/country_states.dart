import 'package:equatable/equatable.dart';

class CountryState extends Equatable {
  final String countryCode; // مثل: EG, SA, AE …
  final String countryName; // الاسم مترجم

  const CountryState({required this.countryCode, required this.countryName});

  factory CountryState.initial() =>
      const CountryState(countryCode: "EG", countryName: "Egypt");

  CountryState copyWith({String? countryCode, String? countryName}) {
    return CountryState(
      countryCode: countryCode ?? this.countryCode,
      countryName: countryName ?? this.countryName,
    );
  }

  @override
  List<Object?> get props => [countryCode, countryName];
}
