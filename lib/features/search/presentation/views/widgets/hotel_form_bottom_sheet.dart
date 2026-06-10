import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../generated/l10n.dart';
import 'dialog_travellers_list_tile.dart';

class HottelFormBottomSheet extends StatelessWidget {
  const HottelFormBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return Dialog(
      backgroundColor: scheme.surface,
      insetPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 15),
          Text(
            S.of(context).numGuestsRooms,
            style: AppTextStyles.text22Bold.copyWith(color: scheme.onSurface),
          ),
          const Divider(),
          DialogTravellersListTile(
            range: 1,
            title: S.of(context).guest,
            onChange: (int cnt) {
              // adults = cnt;
            },
          ),
          const Divider(),
          DialogTravellersListTile(
            range: 0,
            title: S.of(context).rooms,
            onChange: (int cnt) {
              // children = cnt;
            },
          ),
          const SizedBox(height: 20),
          CustomButton(
            onPressed: () {},
            txt: S.of(context).acc,
            icon: Icons.done,
          ),
        ],
      ),
    );
  }
}
