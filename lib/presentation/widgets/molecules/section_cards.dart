import 'package:acha_facil/models/feature_model.dart';
import 'package:acha_facil/presentation/widgets/atoms/card_full_info.dart';
import 'package:flutter/material.dart';

class SectionCards extends StatelessWidget {
  final List<FeatureModel> categoryData;

  const SectionCards({
    required this.categoryData,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: categoryData.map((feature) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 26),
          child: CardFullInfo(
            title: feature.title,
            iconPath: feature.iconPath,
            description: feature.description ?? '',
          ),
        );
      }).toList(),
    );
  }
}
