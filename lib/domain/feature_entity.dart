import 'dart:ui';

enum Category {
  communication('Comunicação'),
  socialMedia('Redes Sociais'),
  media('Fotos e Vídeos'),
  health('Saúde'),
  internet('Internet'),
  services('Serviços'),
  none('Outros');

  final String value;
  const Category(this.value);
}

class Feature {
  final String id;
  final String title;
  final String? description;
  final String iconPath;
  final Color color;
  final Category category;

  Feature({
    required this.id,
    required this.title,
    this.description,
    required this.iconPath,
    this.color = const Color(0xFF000000),
    this.category = Category.none,
  });
}
