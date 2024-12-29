import 'package:flutter/material.dart';

class MostUsedFeatCard extends StatelessWidget {
  final String title;
  final String iconPath;

  const MostUsedFeatCard({
    required this.title,
    required this.iconPath,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
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
        children: [
          Image.asset(
            iconPath,
            width: 50.0,
            height: 50.0,
          ),
          const SizedBox(height: 8.0),
          Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}