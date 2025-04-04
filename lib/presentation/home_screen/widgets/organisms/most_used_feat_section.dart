import 'package:acha_facil/presentation/home_screen/widgets/atoms/line.dart';
import 'package:acha_facil/presentation/home_screen/widgets/molecules/most_used_feat_cards.dart';
import 'package:flutter/material.dart';
import 'package:acha_facil/data/features_data.dart';
import 'package:acha_facil/utils/shared_preferences_utils.dart';

class MostUsedFeatSection extends StatelessWidget {
  const MostUsedFeatSection({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<String>>(
      stream: SharedPreferencesUtils.getTopClickedItemsStream(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }

        if (snapshot.data!.isEmpty) {
          return const SizedBox.shrink();
        }

        final topClickedIds = snapshot.data!;
        final topFeatures = featuresData
            .where((feature) => topClickedIds.contains(feature.id))
            .toList();

        return Column(
          children: [
            const Line(),
            Padding(
              padding: const EdgeInsets.only(top: 32.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Mais Acessados',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 32.0),
                  MostUsedFeatCards(topFeatures),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
