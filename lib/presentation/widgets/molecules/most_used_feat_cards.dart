import 'package:acha_facil/data/features_data.dart';
import 'package:acha_facil/presentation/widgets/atoms/most_used_feat_card.dart';
import 'package:flutter/material.dart';

class MostUsedFeatCards extends StatelessWidget {
  const MostUsedFeatCards({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 24,
        mainAxisSpacing: 24,
      ),
      itemCount: featuresData.length > 4 ? 4 : featuresData.length,
      itemBuilder: (context, index) {
        return MostUsedFeatCard(
          title: featuresData[index].title,
          iconPath: featuresData[index].iconPath,
        );
      },
    );
  }
}
