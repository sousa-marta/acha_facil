import 'package:acha_facil/data/features_data.dart';
import 'package:acha_facil/presentation/widgets/atoms/most_used_feat_card.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class MostUsedFeatCards extends StatelessWidget {
  const MostUsedFeatCards({super.key});

  @override
  Widget build(BuildContext context) {
    final random = Random();
    //TODO: Temporary. It will be implemented sort by most used features
    final randomFeatures =
        (featuresData.toList()..shuffle(random)).take(4).toList();

    return GridView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 24,
        mainAxisSpacing: 24,
      ),
      itemCount: randomFeatures.length,
      itemBuilder: (context, index) {
        return MostUsedFeatCard(
          title: randomFeatures[index].title,
          iconPath: randomFeatures[index].iconPath,
        );
      },
    );
  }
}
