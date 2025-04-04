import 'package:acha_facil/models/feature_model.dart';
import 'package:acha_facil/presentation/home_screen/widgets/atoms/most_used_feat_card.dart';
import 'package:flutter/material.dart';

class MostUsedFeatCards extends StatelessWidget {
  final List<FeatureModel> topFeatures;
  
  const MostUsedFeatCards(this.topFeatures, {super.key});

  @override
  Widget build(BuildContext context) {
    if (topFeatures.isEmpty) {
      return const SizedBox.shrink();
    }

    return GridView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 24,
        mainAxisSpacing: 24,
      ),
      itemCount: topFeatures.length,
      itemBuilder: (context, index) {
        return MostUsedFeatCard(
          id: topFeatures[index].id,
          title: topFeatures[index].title,
          iconPath: topFeatures[index].iconPath,
        );
      },
    );
  }
}
