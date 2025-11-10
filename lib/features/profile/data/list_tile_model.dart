import 'package:flutter/material.dart';

class ListTileModel {
  final String title;
  final IconData leadingIcon;
  final Function() onPressed;

  ListTileModel({
    required this.title,
    required this.leadingIcon,
    required this.onPressed,
  });
}

ListTileModel settingModel(BuildContext context) {
  return ListTileModel(
    title: "Settings",
    leadingIcon: Icons.settings_outlined,
    onPressed: () {},
  );
}

List<ListTileModel> accountModels(BuildContext context) => [
  ListTileModel(
    title: "Change name",
    leadingIcon: Icons.person_outline,
    onPressed: () {},
  ),
  ListTileModel(
    title: "Change password",
    leadingIcon: Icons.vpn_key_outlined,
    onPressed: () {},
  ),
  ListTileModel(
    title: " S.of(context).changeAccImg",
    leadingIcon: Icons.assignment_outlined,
    onPressed: () {},
  ),
];

List<ListTileModel> upTodo(BuildContext context) => [
  ListTileModel(
    title: "S.of(context).aboutUs",
    leadingIcon: Icons.apps_outlined,
    onPressed: () {},
  ),
  ListTileModel(
    title: " S.of(context).faq",
    leadingIcon: Icons.error_outline,
    onPressed: () {},
  ),
  ListTileModel(
    title: "S.of(context).helpAndFeed",
    leadingIcon: Icons.flash_on_outlined,
    onPressed: () {},
  ),
  ListTileModel(
    title: "S.of(context).supportUs",
    leadingIcon: Icons.thumb_up_outlined,
    onPressed: () {},
  ),
];

ListTileModel logOut(BuildContext context) {
  return ListTileModel(
    title: "S.of(context).logOut",
    leadingIcon: Icons.logout,
    onPressed: () {},
  );
}
