import 'dart:ui';

class FeatureModel {
  final String title;
  final String? description;
  final String iconPath;
  final String navigateTo; //preciso?
  final Color color;

  FeatureModel({
    required this.title,
    this.description,
    required this.iconPath,
    required this.navigateTo,
    this.color = const Color(0xFF000000),
  });
}
