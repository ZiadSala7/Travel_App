import 'package:flutter/material.dart';

import '../../../data/models/service_model.dart';
import 'custom_service_chooser.dart';

class ChooseServiceSliverAppBar extends StatelessWidget {
  const ChooseServiceSliverAppBar({super.key, required this.services});

  final List<ServiceModel> services;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
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
    );
  }
}
