import 'package:flutter/material.dart';

class CardFullInfo extends StatelessWidget {
  final String title;
  final String iconPath;
  final String description;

  const CardFullInfo({
    required this.title,
    required this.iconPath,
    required this.description,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
        // mainAxisSize: MainAxisSize.min, // Added to shrink-wrap the content
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
            // fit: FlexFit.loose,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize:
                  MainAxisSize.min, // Added to shrink-wrap the content
              children: [
                Flexible(
                  fit: FlexFit
                      .loose, // Added to allow flexible children to size themselves
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                    softWrap: true,
                  ),
                ),
                Flexible(
                  fit: FlexFit.loose,
                  child: Text(
                    description,
                    style: const TextStyle(fontSize: 20),
                    softWrap: true,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
