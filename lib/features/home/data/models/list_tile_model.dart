import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';

class ListTileModel {
  final String text;
  final Widget widget;
  final Function() onPressed;

  ListTileModel({
    required this.text,
    required this.widget,
    required this.onPressed,
  });
}

List<ListTileModel> listTiles(BuildContext context) => [
  ListTileModel(
    text: S.of(context).currency,
    widget: const Icon(Icons.currency_exchange_sharp, size: 30),
    onPressed: () {},
  ),
  ListTileModel(
    text: S.of(context).wts,
    widget: const Icon(Icons.call, size: 30),
    onPressed: () {},
  ),
  ListTileModel(
    text: S.of(context).language,
    widget: const Icon(Icons.language, size: 30),
    onPressed: () {},
  ),
  ListTileModel(
    text: S.of(context).country,
    widget: const Icon(Icons.flag, size: 30),
    onPressed: () {},
  ),
];
