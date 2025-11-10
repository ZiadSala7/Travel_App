import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';
import '../../../data/models/service_model.dart';

class CustomServiceChooser extends StatelessWidget {
  final ServiceModel model;
  const CustomServiceChooser({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Container(
      height: size.height / 5,
      width: size.width / 2.7,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
      child: Card(
        color: model.color,
        child: Column(
          children: [
            Expanded(child: Image.asset(model.image)),
            Text(model.title, style: AppTextStyles.text16Bold),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
