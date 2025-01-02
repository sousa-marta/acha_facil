import 'package:acha_facil/data/features_data.dart';
import 'package:acha_facil/presentation/widgets/atoms/line.dart';
import 'package:acha_facil/presentation/widgets/molecules/most_used_feat_section.dart';
import 'package:acha_facil/presentation/widgets/molecules/section.dart';
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
              const SizedBox(height: 32.0),
              const Text(
                'Mais Acessados',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 32.0),
              const MostUsedFeatSection(),
              Section(
                sectionTitle: 'Categorias',
                featuresData: featuresData,
              ),
              // Expanded(
              //   child: ListView.builder(
              //     itemCount: 20,
              //     itemBuilder: (context, index) {
              //       return ListTile(
              //         title: Text('Item ${index + 1}'),
              //       );
              //     },
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
