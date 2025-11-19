import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../../splash/presentation/views/widgets/app_logo.dart';
import 'login_view.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../generated/l10n.dart';
import 'sign_up_view.dart';

class AuthChooserView extends StatelessWidget {
  static const String id = 'authChooser';
  const AuthChooserView({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeIn(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: const AppLogo(),
            centerTitle: true,
            bottom: TabBar(
              indicatorColor: AppColors.deepOrange,
              labelColor: AppColors.deepOrange,
              tabs: [
                Tab(text: S.of(context).login, icon: const Icon(Icons.login)),
                Tab(
                  text: S.of(context).signUp,
                  icon: const Icon(Icons.app_registration_outlined),
                ),
              ],
            ),
          ),
          body: const TabBarView(children: [LoginView(), SignUpView()]),
        ),
      ),
    );
  }
}
