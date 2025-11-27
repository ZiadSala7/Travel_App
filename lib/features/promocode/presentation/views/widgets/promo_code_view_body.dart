import 'package:flutter/material.dart';

import 'promo_code_card.dart';

class PromoCodeViewBody extends StatelessWidget {
  const PromoCodeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 15),
              PromoCodeCard(
                promoCode: 'SAVE2025NOW',
                description: 'Valid until: Dec 31, 2025.',
                // Example network image
                imageUrl: 'https://picsum.photos/id/1015/400/200',
                title: '20% OFF on Trips to Egypt',
              ),
              SizedBox(height: 40),
              // Example of another usage with a different image
              PromoCodeCard(
                promoCode: 'FREESHIP',
                description: 'Valid until: Dec 31, 2025.',
                imageUrl: 'https://picsum.photos/id/1018/400/200',
                title: '35% OFF on Trips to Qatar',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
