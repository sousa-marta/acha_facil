import 'dart:ui';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

enum Category {
  communication('Comunicação'),
  socialMedia('Redes Sociais'),
  media('Fotos e Vídeos'),
  health('Saúde'),
  internet('Internet'),
  services('Services'),
  none('Outros');

  final String value;
  const Category(this.value);
}

class FeatureModel {
  final String id;
  final String title;
  final String? description;
  final String iconPath;
  final String navigateTo;
  final Color color;
  final Category category;
  int clickCount = 0;

  FeatureModel({
    String? id,
    required this.title,
    this.description,
    required this.iconPath,
    required this.navigateTo,
    this.color = const Color(0xFF000000),
    this.category = Category.none,
  }) : id = id ?? const Uuid().v4();

  void incrementClickCount() {
    clickCount++;
    _saveClickCount();
  }

  Future<void> _saveClickCount() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setInt('clickCount_$id', clickCount);
  }

  Future<void> loadClickCount() async {
    final prefs = await SharedPreferences.getInstance();
    clickCount = prefs.getInt('clickCount_$id') ?? 0;
  }
}
