import 'package:acha_facil/data/features_data.dart';
import 'package:acha_facil/presentation/widgets/atoms/line.dart';
import 'package:acha_facil/presentation/widgets/organisms/most_used_feat_section.dart';
import 'package:acha_facil/presentation/widgets/organisms/sections.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Line(),
              const MostUsedFeatSection(),
              Sections(featuresData),
            ],
          ),
        ),
      ),
    );
  }
}
