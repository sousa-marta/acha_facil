import 'dart:ui';

enum Category {
  none,
  communication
}

class FeatureModel {
  final String title;
  final String? description;
  final String iconPath;
  final String navigateTo;
  final Color color;
  final Category category;

  FeatureModel({
    required this.title,
    this.description,
    required this.iconPath,
    required this.navigateTo,
    this.color = const Color(0xFF000000),
    this.category = Category.none,
  });
}
