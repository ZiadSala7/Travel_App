import 'package:flutter/material.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/utils/app_text_styles.dart';
import '../../../splash/presentation/views/widgets/app_logo.dart';
import '../../data/models/service_model.dart';
import 'widgets/custom_service_chooser.dart';
import 'widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  static const String id = 'homeView';
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    List<ServiceModel> services = serviceModels(context);
    var items = drawerItems(context);
    return Scaffold(
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Spacer(),
              Column(
                spacing: 20,
                children: List.generate(
                  items.length,
                  (index) => Column(
                    children: [
                      Divider(),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: Icon(items[index]["icon"] as IconData),
                        title: Text(
                          items[index]["title"] as String,
                          style: AppTextStyles.text18Med,
                        ),
                        trailing: items[index]["value"] != null
                            ? Text(
                                items[index]["value"] as String,
                                style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                ),
                              )
                            : const Icon(Icons.arrow_back_ios_new, size: 16),
                        onTap: () {},
                      ),
                      Divider(),
                    ],
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            floating: false,
            snap: false,
            toolbarHeight: 50,
            expandedHeight: 50,
            flexibleSpace: FlexibleSpaceBar(
              title: AppLogo(),
              centerTitle: true,
            ),
          ),
          SliverAppBar(
            automaticallyImplyLeading: false,
            pinned: false,
            floating: false,
            snap: false,
            toolbarHeight: 10,
            expandedHeight: 10,
          ),
          SliverAppBar(
            pinned: true,
            floating: false,
            snap: false,
            automaticallyImplyLeading: false,
            expandedHeight: 100,
            toolbarHeight: 100,
            flexibleSpace: FlexibleSpaceBar(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  services.length,
                  (index) => Flexible(
                    flex: 1,
                    child: CustomServiceChooser(model: services[index]),
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(child: HomeViewBody()),
        ],
      ),
    );
  }
}
