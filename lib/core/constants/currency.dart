import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../managers/currency_cubit/currency_cubit.dart';
import 'constants.dart';

void openCurrencySheet(BuildContext context) {
  final cubit = context.read<CurrencyCubit>();
  final currencies = getCurrencies(context);

  showModalBottomSheet(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
    ),
    builder: (context) {
      return ListView(
        children: currencies.map((currency) {
          return ListTile(
            title: Text("${currency["name"]} (${currency["symbol"]})"),
            subtitle: Text(currency["code"]!),
            onTap: () {
              cubit.changeCurrency(
                code: currency["code"]!,
                symbol: currency["symbol"]!,
              );
              Navigator.pop(context);
            },
          );
        }).toList(),
      );
    },
  );
}
