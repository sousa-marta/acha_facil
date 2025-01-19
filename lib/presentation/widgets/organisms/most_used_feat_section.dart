import 'package:acha_facil/presentation/widgets/molecules/most_used_feat_cards.dart';
import 'package:flutter/material.dart';

class MostUsedFeatSection extends StatelessWidget {
  const MostUsedFeatSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Mais Acessados',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 32.0),
          MostUsedFeatCards(),
        ],
      ),
    );
  }
}
