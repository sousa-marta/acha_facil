import 'package:acha_facil/models/feature_model.dart';
import 'package:acha_facil/presentation/widgets/atoms/card_full_info.dart';
import 'package:acha_facil/presentation/widgets/atoms/line.dart';
import 'package:flutter/material.dart';

class SectionCards extends StatelessWidget {
  final List<FeatureModel> categoryData;
  final String categoryTitle;

  const SectionCards({
    required this.categoryData,
    required this.categoryTitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Line(),
        const SizedBox(height: 32.0),
        Text(
          categoryTitle,
          style: const TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 32.0),
        Column(
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
        ),
        const SizedBox(height: 6.0),
      ],
    );
  }
}
