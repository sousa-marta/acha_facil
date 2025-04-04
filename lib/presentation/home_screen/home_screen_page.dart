import 'package:acha_facil/data/features_data.dart';
import 'package:acha_facil/presentation/home_screen/widgets/organisms/header.dart';
import 'package:acha_facil/presentation/home_screen/widgets/organisms/most_used_feat_section.dart';
import 'package:acha_facil/presentation/home_screen/widgets/organisms/sections.dart';
import 'package:flutter/material.dart';

class HomeScreenPage extends StatelessWidget {
  const HomeScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 32.0, 16.0, 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Header(),
              const MostUsedFeatSection(),
              Sections(featuresData),
            ],
          ),
        ),
      ),
    );
  }
}
