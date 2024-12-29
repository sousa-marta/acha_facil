import 'package:acha_facil/presentation/widgets/atoms/most_used_feat_card.dart';
import 'package:flutter/material.dart';

class MostUsedFeatSection extends StatelessWidget {
  const MostUsedFeatSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: 4,
        itemBuilder: (context, index) {
          return const MostUsedFeatCard(
            title: 'Feature Title',
            iconPath: 'assets/images/whatsapp.png',
          );
        },
      ),
    );
  }
}
