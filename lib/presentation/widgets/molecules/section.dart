import 'package:acha_facil/models/feature_model.dart';
import 'package:acha_facil/presentation/widgets/atoms/card_full_info.dart';
import 'package:acha_facil/presentation/widgets/atoms/line.dart';
import 'package:flutter/material.dart';

class Section extends StatelessWidget {
  final String sectionTitle;
  final List<FeatureModel> featuresData;

  const Section({
    required this.sectionTitle,
    required this.featuresData,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Line(),
        const SizedBox(height: 32.0),
        Text(
          sectionTitle,
          style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 32.0),
        CardFullInfo(
          title: featuresData[0].title,
          iconPath: featuresData[0].iconPath,
          description: featuresData[0].description ?? '',
        )
      ],
    );
  }
}

