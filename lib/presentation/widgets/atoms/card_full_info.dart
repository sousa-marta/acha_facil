import 'package:acha_facil/utils/feature_action_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:acha_facil/utils/shared_preferences_utils.dart';

class CardFullInfo extends StatelessWidget {
  final String id;
  final String title;
  final String iconPath;
  final String description;
  final String navigateTo;
  final String? playStoreUrl;
  final String? appleStoreUrl;

  const CardFullInfo({
    required this.id,
    required this.title,
    required this.iconPath,
    required this.description,
    required this.navigateTo,
    this.playStoreUrl,
    this.appleStoreUrl,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: () async {
        SharedPreferencesUtils.incrementClickCount(id);

        await FeatureActionUtils.navigateToApp(id);

        await SharedPreferencesUtils
            .printClickCounts(); //TODO REMOVE AFTER TESTING
      },
      padding: const EdgeInsets.all(0),
      child: Container(
        padding: const EdgeInsets.all(16.0),
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
        child: Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.2,
              child: Image.asset(
                iconPath,
                width: 70.0,
                height: 70.0,
              ),
            ),
            const SizedBox(width: 16.0),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    fit: FlexFit.loose,
                    child: Text(
                      title,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                      softWrap: true,
                    ),
                  ),
                  Flexible(
                    fit: FlexFit.loose,
                    child: Text(
                      description,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                      softWrap: true,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
