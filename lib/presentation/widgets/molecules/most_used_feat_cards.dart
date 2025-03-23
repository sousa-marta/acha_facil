import 'package:acha_facil/data/features_data.dart';
import 'package:acha_facil/presentation/widgets/atoms/most_used_feat_card.dart';
import 'package:flutter/material.dart';
import 'package:acha_facil/utils/shared_preferences_utils.dart';

class MostUsedFeatCards extends StatelessWidget {
  const MostUsedFeatCards({super.key});

  @override
  Widget build(BuildContext context) {
    SharedPreferencesUtils.printClickCounts(); //TODO REMOVE AFTER TESTING
    return FutureBuilder<List<String>>(
      future: SharedPreferencesUtils.getTopClickedItems(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }

        final topClickedIds = snapshot.data!;
        final topFeatures = featuresData
            .where((feature) => topClickedIds.contains(feature.id))
            .toList();

//TODO hide if no top features

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
              title: topFeatures[index].title,
              iconPath: topFeatures[index].iconPath,
            );
          },
        );
      },
    );
  }
}
