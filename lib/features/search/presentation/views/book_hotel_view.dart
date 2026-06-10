import 'package:flutter/material.dart';

import '../../../../core/utils/app_text_styles.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
import '../../../../generated/l10n.dart';
import 'widgets/book_hotel_date_selector.dart';
import 'widgets/num_of_guests_and_rooms_chooser.dart';

class BookHotelView extends StatelessWidget {
  const BookHotelView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    final isDark = theme.brightness == Brightness.dark;

    return SingleChildScrollView(
      child: Container(
        height: 420,
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: scheme.surface,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: scheme.outline.withValues(alpha: 0.18)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: isDark ? 0.28 : 0.10),
              blurRadius: 24,
              offset: const Offset(0, 12),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 20),
            Text(
              S.of(context).destination,
              style: AppTextStyles.text16Bold.copyWith(color: scheme.onSurface),
            ),
            const SizedBox(height: 10),
            CustomTextFormField(
              title: S.of(context).destination,
              controller: TextEditingController(),
              prefixIcon: Icons.location_on_rounded,
            ),
            const SizedBox(height: 20),
            const BookHotelDateSelector(),
            const SizedBox(height: 20),
            Text(
              S.of(context).guestsAndRooms,
              style: AppTextStyles.text16Bold.copyWith(color: scheme.onSurface),
            ),
            const SizedBox(height: 10),
            const NumOfGuestsAndRoomsChooser(),
            const SizedBox(height: 20),
            CustomButton(
              onPressed: () {},
              txt: S.of(context).Search,
              icon: Icons.arrow_forward,
            ),
          ],
        ),
      ),
    );
  }
}
