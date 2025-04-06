import 'package:acha_facil/presentation/utils/feature_navigation_handler.dart';
import 'package:acha_facil/data/click_count_local_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MostUsedFeatCard extends StatelessWidget {
  final String id;
  final String title;
  final String iconPath;

  const MostUsedFeatCard({
    required this.id,
    required this.title,
    required this.iconPath,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: () async {
        ClickCountLocalRepository.incrementClickCount(id);
        await FeatureNavigationHandler().navigate(context, id);
      },
      padding: const EdgeInsets.all(0),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        width: double.infinity,
        height: 180.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 4.0,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              iconPath,
              width: 70.0,
              height: 70.0,
            ),
            const SizedBox(height: 16.0),
            Flexible(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
                softWrap: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
