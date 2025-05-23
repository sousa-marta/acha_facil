import 'package:acha_facil/domain/feature_entity.dart';
import 'package:acha_facil/presentation/home_screen/widgets/molecules/section_cards.dart';
import 'package:flutter/material.dart';

class Sections extends StatelessWidget {
  final List<Feature> featuresData;
  const Sections(this.featuresData, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32.0),
      child: Column(
        children: [
          ...Category.values
              .where((category) => category != Category.none)
              .map((category) {
            final categoryFeatureData = featuresData
                .where((feature) => feature.category == category)
                .toList();
            return SectionCards(
              categoryData: categoryFeatureData,
              categoryTitle: category.value,
            );
          }),
          // Decidir se vai ter uma categoria none
          // ...Category.values
          //     .where((category) => category == Category.none)
          //     .map((category) {
          //   final categoryFeatureData = featuresData
          //       .where((feature) => feature.category == category)
          //       .toList();
          //   return SectionCards(
          //     categoryData: categoryFeatureData,
          //     categoryTitle: category.value,
          //   );
          // }),
        ],
      ),
    );
  }
}
