import 'package:flutter/material.dart';

import 'widgets/guest_or_login_view_body.dart';

class GuestOrLoginView extends StatelessWidget {
  static const String id = 'guestOrLogin';
  const GuestOrLoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: GuestOrLoginViewBody());
  }
}
