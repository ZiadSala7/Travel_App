import 'package:flutter/material.dart';

import '../../features/search/presentation/views/search_view.dart';
import '../utils/app_colors.dart';

class FloatingActionButtonBottomBar extends StatelessWidget {
  const FloatingActionButtonBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.of(context).pushNamed(SearchView.id);
      },
      backgroundColor: AppColors.deepOrange,
      shape: const CircleBorder(),
      child: const Icon(Icons.search, size: 30, color: Colors.white),
    );
  }
}
